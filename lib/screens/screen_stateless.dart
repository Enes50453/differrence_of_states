import 'dart:math';

import 'package:flutter/material.dart';

class SceenStateless extends StatelessWidget {
  Color button_color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Stateless Widget"),
      ),*/
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Text(
                "STATELESS WİDGET",
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
                onPressed: () {
                  show_Dialog(context);
                },
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
                "A stateless widget cannot change its state during the runtime of a Flutter application. That means a stateless widget cannot be redrawn while the app is in action. For that reason, the appearance and properties remain unchanged throughout the lifetime of the widget.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/stateful"),
        tooltip: 'Stateful',
        child: const Icon(Icons.arrow_circle_left),
      ),
    );
  }

  void show_Dialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text(
            'I am a Stateless Widget. I cant make any changes on this screen :(',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}
