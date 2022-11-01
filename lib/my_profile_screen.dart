import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  var nameFromHomePage;

  MyProfileScreen({required this.nameFromHomePage});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nameFromHomePage,
          style: TextStyle(
            fontSize: 34,
            color: Colors.black87,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ],
    );
  }
}
