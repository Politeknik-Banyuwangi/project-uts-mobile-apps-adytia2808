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
            chatPhone("Ayang", "Asslamualaikum", "12:08", Icons.done, Colors.green, NetworkImage("https://i.ibb.co/BwqbJxg/ayang.jpg")),
            chatPhone("Sokles Ayam", "Ready Ayam Jago Bos!", "12:08", Icons.done, Colors.green, NetworkImage("https://i.ibb.co/QfpJXCq/pp2.jpg")),
            chatPhone("Wahyu", "pcc dit", "12:08", Icons.done_all, Colors.green, NetworkImage("https://i.ibb.co/MSqdrmV/pp.jpg")),
            chatPhone("Ali", "Mabar dit", "12:08", Icons.done, Colors.green, NetworkImage("https://cdn.idntimes.com/content-images/post/20180920/4faca301c0d25bbfa08bb1256a1c71e2.jpg")),
            chatPhone("Ayu Ginanjar", "P", "12:08", Icons.done, Colors.green, NetworkImage("https://lh3.googleusercontent.com/proxy/SvpJipvePYyeCRAm7GzOhJjShKePN_r4yag05BsUWH5A4_PJyqZizSz-8oarheZiORHVfGpsiRluOv8YuF3kGNeGWLi31hv0DqXeV6JKLk0CFXIvufsHmu70sA=w1200-h630-p-k-no-nu")),
            chatPhone("Siti Stikus", "P", "12:08", Icons.done, Colors.green, NetworkImage("https://1.bp.blogspot.com/-PgQ2tI2fbnU/X9tIboO0k2I/AAAAAAAAQWI/RqE3Lj-k31g4lvwkFwuccPZZ2Q_LzBp0wCPcBGAsYHg/s736/9e875e099e7a0ce717fa9956c464deb0.jpg")),
            chatPhone("Putri Rahayu", "pcc dit", "12:08", Icons.done_all, Colors.green, NetworkImage("https://i.pinimg.com/736x/43/c1/66/43c166f2ef2613ad393eccdff5cac10a.jpg")),
            chatPhone("Rahmat", "pcc dit", "12:08", Icons.done_all, Colors.green, NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
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
