import 'package:flutter/material.dart';
import 'package:just_talk/model/other_accounts.dart';

class ChatDetails extends StatelessWidget {
  final other_accounts oa;
  ChatDetails({required this.oa});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          // Back button
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Column(),
          // Account profile picture
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/unknown.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                  ),
                ),
              ),
            ],
          ),
          // Account name
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: Center(
                  child: Text(
                    oa.name,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Message
          Text(
            oa.msg,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
