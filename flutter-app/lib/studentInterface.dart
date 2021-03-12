import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

import 'data.dart';

class StudentSelectPage extends StatefulWidget {
  @override
  _StudentSelectPageState createState() => _StudentSelectPageState();
}

class _StudentSelectPageState extends State<StudentSelectPage> {
  int _selectedIndex = 0;
  PageController _pageController;
  String _pickUpValue;
  String _dropOffValue;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add_location,
                  color: Colors.red,
                  size: 35,
                ),
                Text(
                  "Select Pick-Up Location: ",
                  style: mediumGreyDropText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DropdownButton<String>(
              value: _pickUpValue,
              // hint: Text(
              //   "Pick - Up Location",
              //   style: mediumGreyDropText,
              // ),
              icon: Icon(Icons.arrow_downward),
              iconSize: 40,
              elevation: 8,
              style: mediumBlack,
              onChanged: (String newValue) {
                _pickUpValue = newValue;
                setState(() {});
              },
              items: [
                DropdownMenuItem(
                  value: "York University",
                  child: Text(
                    "York University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Unversity ofToronto",
                  child: Text(
                    "Unversity of Toronto",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "University of Waterloo",
                  child: Text(
                    "University of Waterloo",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "McMaster University",
                  child: Text(
                    "McMaster University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Queens University",
                  child: Text(
                    "Queens University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "University of Ottawa",
                  child: Text(
                    "University of Ottawa",
                    style: mediumGreyDropText,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add_location,
                  color: Colors.blue,
                  size: 35,
                ),
                Text(
                  "Select DropOff Location: ",
                  style: mediumGreyDropText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: DropdownButton<String>(
              value: _dropOffValue,
              // hint: Text(
              //   "Pick - Up Location",
              //   style: mediumGreyDropText,
              // ),
              icon: Icon(
                Icons.arrow_downward,
                color: Colors.grey,
              ),
              iconSize: 40,
              elevation: 8,
              style: mediumBlack,
              onChanged: (String newValue) {
                _dropOffValue = newValue;
                setState(() {});
              },
              items: [
                DropdownMenuItem(
                  value: "York University",
                  child: Text(
                    "York University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Unversity ofToronto",
                  child: Text(
                    "Unversity of Toronto",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "University of Waterloo",
                  child: Text(
                    "University of Waterloo",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "McMaster University",
                  child: Text(
                    "McMaster University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Queens University",
                  child: Text(
                    "Queens University",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "University of Ottawa",
                  child: Text(
                    "University of Ottawa",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Union Station",
                  child: Text(
                    "Union Station",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Hamilton",
                  child: Text(
                    "Hamilton",
                    style: mediumGreyDropText,
                  ),
                ),
                DropdownMenuItem(
                  value: "Scarborough",
                  child: Text(
                    "Scarborough",
                    style: mediumGreyDropText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: DatePickerTimeline(
              DateTime.now(),
              onDateChange: (date) {
                print(date.day.toString());
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        showElevation: false, // use this to remove appBar's elevation
        backgroundColor: Pallete.bottomGrey,
        onItemSelected: (index) => setState(
          () {
            _selectedIndex = 0;
            _pageController.animateToPage(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
        ),
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(
              'Home',
              style: navBarText,
            ),
            textAlign: TextAlign.center,
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text('Users'),
            textAlign: TextAlign.center,
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Settings'),
            textAlign: TextAlign.center,
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
