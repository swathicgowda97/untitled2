import 'package:flutter/material.dart';
import 'my_profile_screen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var emailText = TextEditingController();

  var passwordText = TextEditingController();

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Here Am Printing the values from the Textfield into the console',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: 'enter mail-id',
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  controller: passwordText,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'enter password',
                    prefixIcon: Icon(Icons.visibility),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  String uEmail = emailText.text.toString();
                  String uPass = passwordText.text.toString();
                  print('Email:$uEmail , Password:$uPass');
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, top: 14, right: 25, bottom: 14),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Here Am passing the  data from  one screen(Textfield) to the another screen ',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProfileScreen(
                          nameFromHomePage: nameController.text.toString(),
                        ),
                      ));
                },
                child: Text('My Profile'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
