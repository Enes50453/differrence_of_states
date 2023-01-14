import 'dart:math';

import 'package:flutter/material.dart';

class SceenStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SceenStateful();
  }
}

class _SceenStateful extends State {
  Color button_color = Colors.blueAccent;
  final Random random = Random();

  generateRandomColor() {
    Color btnColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      button_color = btnColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Text(
                "STATEFUL WİDGET",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Center(
              child: ElevatedButton(
                onPressed: () => generateRandomColor(),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 300),
                  shape: const CircleBorder(),
                  backgroundColor: button_color,
                ),
                child: Text(
                  'Click!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            height: 2.0,
            color: button_color,
            thickness: 4.0,
            indent: 50,
            endIndent: 50,
          ),
          SizedBox(height: 10),
          Container(
            child: Center(
              child: Text(
                  " Stateful widget may have states in it. Basically, thats mean you can make changes on the screen. For example in this screen, when you click the button above, you can see the color of the button is changing. Every time you click on that button, program create a new random color, and changing the button color by using setState() function. With using the setState() function, you can see the changes.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                  softWrap: true),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/stateless"),
        tooltip: 'Stateless',
        child: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}
