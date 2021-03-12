import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';

//import 'package:google_fonts/google_fonts.dart';
import 'data.dart';

class DriverSignUpPage extends StatefulWidget {
  @override
  _DriverSignUpPageState createState() => _DriverSignUpPageState();
}

class _DriverSignUpPageState extends State<DriverSignUpPage> {
  final nameControl = TextEditingController();
  final emailControl = TextEditingController();
  final numberControl = TextEditingController();
  final passwordControl = TextEditingController();

  Padding inputBox(String t, TextEditingController myController, bool pass) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 350,
        height: 70,
        child: TextField(
          controller: myController,
          obscureText: pass,
          decoration: new InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(24),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Colors.grey),
            hintText: t,
          ),
        ),
      ),
    );
  }

  //Padding niceButton(String t, List<Colors> l) {}

  @override
  void dispose() {
    nameControl.dispose();
    emailControl.dispose();
    numberControl.dispose();
    passwordControl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Text(
                  'Hello Driver,',
                  style: blackHeader,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'We need your information to \nkeep everyone safe',
                  style: mediumGreyText,
                  textAlign: TextAlign.center,
                ),
              ),
              inputBox("Full Name", nameControl, false),
              inputBox("Email Address", emailControl, false),
              inputBox("Mobile Number", numberControl, false),
              inputBox("Password", passwordControl, true),
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 5),
                child: Text(
                  "Please enter a minmium of eight characters",
                  textAlign: TextAlign.left,
                  style: smallText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: NiceButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 350,
                  elevation: 8.0,
                  radius: 24,
                  text: "Ready to Scoop",
                  background: null,
                  gradientColors: [
                    Pallete.mainBlue,
                    Pallete.studetGreen,
                  ],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DriverLicencePage(nameControl.text),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "By submitting you agree to our terms and conditions",
                  textAlign: TextAlign.center,
                  style: madSmallText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DriverLicencePage extends StatelessWidget {
  DriverLicencePage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Text(
                  this.name,
                  style: mediumBlack,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'We need to verify your information',
                  style: mediumGreyText,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: NiceButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 350,
                  elevation: 8.0,
                  radius: 24,
                  icon: (Icons.camera_alt),
                  text: "Your Drivers Licence",
                  background: Pallete.mainBlue,
                  onPressed: () {
                    print("test");
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: NiceButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 350,
                  elevation: 8.0,
                  radius: 24,
                  icon: (Icons.camera_alt),
                  background: Pallete.studetGreen,
                  text: "Your Vehicle",
                  onPressed: () {
                    print("test");
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
                child: NiceButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 350,
                  elevation: 8.0,
                  radius: 24,
                  text: "Welcome to Scoop",
                  background: null,
                  gradientColors: [
                    Pallete.studetGreen,
                    Pallete.mainBlue,
                  ],
                  onPressed: () {
                    print("test");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
