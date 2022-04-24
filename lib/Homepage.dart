import 'package:flutter/material.dart';
import 'package:just_talk/model/other_accounts.dart';
import 'package:just_talk/Settings.dart';
import 'package:just_talk/ChatDetails.dart';

class Homepage extends StatelessWidget {
  final String text;
  Homepage(this.text);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Title and first icon
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // JustTalk text title
                Column(
                  children: <Widget>[
                    Text(
                      'Welcome $text !',
                      style: TextStyle(
                        fontFamily: 'SignikaNegative_R',
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
                // Search Icon
                Column(
                  children: <Widget>[
                    Icon(Icons.search),
                  ],
                ),
                // Settings Icon
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Settings();
                    }));
                  },
                ),
              ],
            ),
          ),

          // CardView of the chats
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final other_accounts oa = other_accounts_list[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChatDetails(oa: oa);
                    }));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(75.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  oa.name,
                                  style: TextStyle(
                                      fontFamily: 'SignikaNegative_R',
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  oa.msg,
                                  style: TextStyle(
                                    fontFamily: 'SignikaNegative_R',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: other_accounts_list.length,
            ),
          ),
        ],
      ),
    );
  }
}
