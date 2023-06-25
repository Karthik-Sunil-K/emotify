import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EBC Friend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HappyScreen1(
        happyMoodPoint: 0,
      ),
    );
  }
}



class HappyScreen1 extends StatelessWidget {
  final int happyMoodPoint;

  HappyScreen1({required this.happyMoodPoint});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/happy1.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you feeling joyful?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HappyScreen2(happyMoodPoint: happyMoodPoint + 1),
                        ),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HappyScreen2(happyMoodPoint: happyMoodPoint),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HappyScreen2 extends StatelessWidget {
  final int happyMoodPoint;

  HappyScreen2({required this.happyMoodPoint});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/happy2.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you in a good mood?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HappyScreen3(
                              happyMoodPoint: happyMoodPoint + 1,
                              sadMoodPoint: 0,
                              angryMoodPoint: 0),
                        ),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HappyScreen3(
                              happyMoodPoint: happyMoodPoint,
                              sadMoodPoint: 0,
                              angryMoodPoint: 0),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HappyScreen3 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  HappyScreen3({
    required this.happyMoodPoint,
    required this.sadMoodPoint,
    required this.angryMoodPoint,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/happy3.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Do you feel like dancing?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FinalSummaryScreen(
                            happyMoodPoint: happyMoodPoint + 1,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint,
                          ),
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SadScreen1(
                              happyMoodPoint: happyMoodPoint + 1,
                              sadMoodPoint: sadMoodPoint,
                              angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FinalSummaryScreen(
                              happyMoodPoint: happyMoodPoint,
                              sadMoodPoint: sadMoodPoint,
                              angryMoodPoint: angryMoodPoint),
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SadScreen1(
                              happyMoodPoint: happyMoodPoint,
                              sadMoodPoint: sadMoodPoint,
                              angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SadScreen1 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  SadScreen1(
      {required this.happyMoodPoint,
      required this.sadMoodPoint,
      required this.angryMoodPoint});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/sad1.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you feeling down?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SadScreen2(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint + 1,
                        angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SadScreen2(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SadScreen2 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  SadScreen2(
      {required this.happyMoodPoint,
      required this.sadMoodPoint,
      required this.angryMoodPoint});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/happy1.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you feeling melancholic?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SadScreen3(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint + 1,
                        angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SadScreen3(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}







class SadScreen3 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  SadScreen3(
      {required this.happyMoodPoint,
      required this.sadMoodPoint,
      required this.angryMoodPoint});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/sad3.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Do you want to listen to soothing music?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinalSummaryScreen(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AngryScreen1(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                  ),
                );
              },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinalSummaryScreen(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AngryScreen1(
                        happyMoodPoint: happyMoodPoint,
                        sadMoodPoint: sadMoodPoint,
                        angryMoodPoint: angryMoodPoint),
                  ),
                );
              },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class AngryScreen1 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  AngryScreen1({
    required this.happyMoodPoint,
    required this.sadMoodPoint,
    required this.angryMoodPoint,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/ang1.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you feeling irritated?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            AngryScreen2(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint + 1,
                        ),
                        )
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                             AngryScreen2(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint,
                          ),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}











class AngryScreen2 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  AngryScreen2({
    required this.happyMoodPoint,
    required this.sadMoodPoint,
    required this.angryMoodPoint,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/ang2.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Are you feeling furious?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            AngryScreen3(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint + 1,
                          ),
                        )
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            AngryScreen3(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint,
                          ),
                        ),
                      );
                    },
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AngryScreen3 extends StatelessWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  AngryScreen3({
    required this.happyMoodPoint,
    required this.sadMoodPoint,
    required this.angryMoodPoint,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gapHeight = screenHeight * 0.1;
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4;
    double imageWidth = screenWidth * 0.75;
    double buttonHeight = screenWidth * 0.15;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/ang3.png',
                width: imageWidth,
              ),
            ),
            SizedBox(height: gapHeight),
            Text(
              'Do you want to listen to energetic music?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: gapHeight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                                        style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FinalSummaryScreen(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint + 1,
                          ),
                        ),
                      );
                    },
                  
                    child: Text(
                      'Yes',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                                        style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3F1259)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FinalSummaryScreen(
                            happyMoodPoint: happyMoodPoint,
                            sadMoodPoint: sadMoodPoint,
                            angryMoodPoint: angryMoodPoint,
                          ),
                        ),
                      );
                    },
                 
                    child: Text(
                      'No',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





class FinalSummaryScreen extends StatefulWidget {
  final int happyMoodPoint;
  final int sadMoodPoint;
  final int angryMoodPoint;

  FinalSummaryScreen({
    required this.happyMoodPoint,
    required this.sadMoodPoint,
    required this.angryMoodPoint,
  });

  @override
  _FinalSummaryScreenState createState() => _FinalSummaryScreenState();
}

class _FinalSummaryScreenState extends State<FinalSummaryScreen> {
  String highestSeed = '';
  String recommendedMusicLink = '';

  @override
  void initState() {
    super.initState();
    determineHighestSeed();
  }

  void determineHighestSeed() {
    if (widget.happyMoodPoint > widget.sadMoodPoint &&
        widget.happyMoodPoint > widget.angryMoodPoint) {
      highestSeed = 'happy';
    } else if (widget.sadMoodPoint > widget.happyMoodPoint &&
        widget.sadMoodPoint > widget.angryMoodPoint) {
      highestSeed = 'sad';
    } else if (widget.angryMoodPoint > widget.happyMoodPoint &&
        widget.angryMoodPoint > widget.sadMoodPoint) {
      highestSeed = 'angry';
    } else {
      // If two or more variables have the same highest value, handle the scenario as desired.
      highestSeed = 'default'; // Set a default seed value or implement custom logic.
    }

    fetchRecommendedMusic();
  }

  Future<void> fetchRecommendedMusic() async {
    final apiUrl =
        'https://api.spotify.com/v1/recommendations?seed_genres=$highestSeed';
    final accessToken = await getAccessToken();

    final response = await http.get(Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $accessToken'});

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final trackUri = jsonResponse['tracks'][0]['external_urls']['spotify'];

      setState(() {
        recommendedMusicLink = trackUri;
      });
    } else {
      throw Exception('Failed to load recommended music');
    }
  }

  Future<String> getAccessToken() async {
    final clientId = 'dfdc6a8488af41bab3e40c281e372013';
    final clientSecret = '1d122f9fbf3045c287164f6dfb33064b';

    final basicAuth =
        'Basic ${base64.encode(utf8.encode('$clientId:$clientSecret'))}';

    final response = await http.post(
      Uri.parse('https://accounts.spotify.com/api/token'),
      headers: {'Authorization': basicAuth},
      body: {'grant_type': 'client_credentials'},
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final accessToken = jsonResponse['access_token'];
      return accessToken;
    } else {
      throw Exception('Failed to obtain access token');
    }
  }

  Future<void> launchMusicUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('EBC Friend')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recommended Music',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            if (recommendedMusicLink.isNotEmpty)
              ElevatedButton(
                 style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3425af5)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                onPressed: () {
                  launchMusicUrl(recommendedMusicLink);
                },
                child: Text(
                  'Listen Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}



