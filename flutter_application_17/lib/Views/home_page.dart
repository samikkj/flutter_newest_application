import 'package:flutter/material.dart';

import 'Second_screen.dart';

class HomePage extends StatelessWidget {
  final TextEditingController namTextController = TextEditingController();
  final TextEditingController usrTextController = TextEditingController();
  final TextEditingController adrTextController = TextEditingController();
  final TextEditingController rtjTextController = TextEditingController();
  final TextEditingController passTextController = TextEditingController();
  final TextEditingController conpassTextController = TextEditingController();
  HomePage({Key? key}) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Login',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.amber,
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: namTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter your name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: usrTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter your username'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: adrTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  hintText: 'Enter your Address'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: rtjTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Reasons to join',
                  hintText: 'Why you joined?'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.password, size: 20, color: Colors.amber),
              ),
              obscureText: true,
              // for passwords
              obscuringCharacter: '*',
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: conpassTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.password, size: 20, color: Colors.amber),
              ),
              obscureText: true,
              // for passwords
              obscuringCharacter: '*',
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondPage(
                          name: namTextController.text,
                          user: usrTextController.text,
                          addr: adrTextController.text,
                          wjoin: rtjTextController.text,
                          pass: passTextController.text,
                          confpass: conpassTextController.text,
                        )));
              },
              child: Text('Login'),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.amber),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
          ],
        ),
      ),
    );
  }
}
