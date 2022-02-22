import 'package:flutter/material.dart';
import 'package:preach_record/page/count.dart';
import 'package:preach_record/page/return_Visit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: BottomNavigationController(),
    ));
  }
}

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int currentIdx = 0;
  final pages = [const Count(), const ReturnVisit()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.alarm_add), label: 'Count'),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_return), label: 'Return'),
        ],
        currentIndex: currentIdx,
        fixedColor: Colors.amber,
        onTap: onClick,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
    );
  }

  void onClick(int index) {
    setState(() {
      currentIdx = index;
    });
  }
}
