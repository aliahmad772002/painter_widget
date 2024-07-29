import 'package:flutter/material.dart';

import 'package:painter_widget/painter1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                color: Color(0xff0D2857),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WelCome!",
                        style: TextStyle(
                            fontSize: width * 0.15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "Nice to see you again!",
                        style: TextStyle(
                            fontSize: width * 0.07, color: Colors.white70),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: width * 0.06, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.6),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPaint(
                      painter: MyPainter(),
                      child: Container(
                        height: height * 0.3,
                        // color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.1),
                      child: Row(
                        children: [
                          Text(
                            'You are not a member?',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.04),
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
