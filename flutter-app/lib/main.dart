import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';

import 'driver.dart';
import 'data.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // FloatingActionButton(
            //   onPressed: null,
            //   backgroundColor: Colors.white,
            //   elevation: 0,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Text(
                'scoop',
                style: header,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text(
                'Your go to way from traveling to \nhotspot to hotspot',
                style: mediumText,
                textAlign: TextAlign.center,
              ),
            ),
            NiceButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: 350,
              elevation: 8.0,
              radius: 24,
              text: "Are you a driver?",
              background: Pallete.mainBlue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DriverSignUpPage()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: NiceButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: 350,
                elevation: 8.0,
                radius: 24,
                text: "Are you a student?",
                background: Pallete.studetGreen,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StudentSignUpPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Already have an account? Sign-in",
                textAlign: TextAlign.center,
                style: smallText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
