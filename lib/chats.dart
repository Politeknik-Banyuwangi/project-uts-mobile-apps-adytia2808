import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            chatPhone("Ayang", "hallo", "12:08", Icons.call_received, Colors.green, NetworkImage("https://i.ibb.co/BwqbJxg/ayang.jpg")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget chatPhone(String name, String desk, String time, IconData iconD, Color iconC, NetworkImage ntimg) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: ntimg,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(
            iconD,
            size: 16,
            color: iconC,
          ),
          SizedBox(width: 5),
          Text(
            desk,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ]),
        trailing: Text(time),
      ),
    );
  }
}
