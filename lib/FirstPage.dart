import 'package:flutter/material.dart';
import 'package:just_talk/Homepage.dart';

class FirstPage extends StatefulWidget {
  final String text;
  const FirstPage({required this.text});
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'JustTalk',
                  style: TextStyle(
                    fontFamily: 'SignikaNegative_SB',
                    fontSize: 20,
                  ),
                ),
                Text(
                  'A place for you to talk!',
                  style: TextStyle(
                    fontFamily: 'SignikaNegative_R',
                    fontSize: 15,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Input your name here!',
                      labelText: 'Your name please.'),
                  onChanged: (String value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Homepage(name)));
                  },
                  child: Text('Log In'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
