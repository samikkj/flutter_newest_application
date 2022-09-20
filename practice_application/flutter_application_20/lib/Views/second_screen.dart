import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String? nams;
  String? usr;
  String? reason;
  String? passw;
  SecondScreen({this.nams, this.usr, this.reason, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 120,
                  child: Center(child: Text(nams!)),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 120,
                  child: Center(child: Text(usr!)),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Reason to Join',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 120,
                  child: Center(child: Text(reason!)),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ],
            )

            // Text(usr!),
            // Text(reason!),
          ],
        ));
  }
}
