import 'package:flutter/material.dart';
import 'package:flutter_application_20/Views/second_screen.dart';

class HomePage extends StatelessWidget {
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController rtjTextController = TextEditingController();
  // final TextEditingController passTextController = TextEditingController();
  HomePage({Key? key}) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('Login',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                    fontStyle: FontStyle.italic)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: nameTextController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter your name'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: userTextController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Enter your username'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: rtjTextController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Reason',
                hintText: 'Why you joined'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            // controller: passTextController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password'),
            obscureText: true,
            obscuringCharacter: '*',
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
                hintText: 'Enter your password'),
            obscureText: true,
            obscuringCharacter: '*',
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => SecondScreen(
                        nams: nameTextController.text,
                        usr: userTextController.text,
                        reason: rtjTextController.text,
                        // passw: passTextController.text,
                      ))));
            },
            child: Text('Login'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue),
                backgroundColor: MaterialStateProperty.all(
                  Colors.yellow,
                )),
          ),
        ],
      ),
    ));
  }
}
