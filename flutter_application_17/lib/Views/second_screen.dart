import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String? name;
  String? user;
  String? addr;
  String? wjoin;
  String? pass;
  String? confpass;
  SecondPage(
      {this.name,
      this.user,
      this.addr,
      this.wjoin,
      this.pass,
      this.confpass,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text('Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 200,
                color: Colors.purple,
                child: Text(name!,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              ),
            ],
          ),
          Row(
            children: [
              Text('Username',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 20,
                  width: 200,
                  color: Colors.yellow,
                  child: Text(
                    user!,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Text('Address:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 20,
                  width: 200,
                  color: Colors.blue,
                  child: Text(
                    addr!,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Text('Reason to Join',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 20,
                  width: 200,
                  color: Colors.red,
                  child: Text(
                    wjoin!,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
