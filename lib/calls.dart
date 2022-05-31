import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
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
            callPhone("Ayang", Icons.call_received, Colors.green, "Mei 20, 12:08", NetworkImage("https://i.ibb.co/BwqbJxg/ayang.jpg")),
            callPhone("Sokles Ayam", Icons.call_received, Colors.green, "Mei 20, 20:45", NetworkImage("https://i.ibb.co/QfpJXCq/pp2.jpg")),
            callPhone("Wahyu", Icons.call_received, Colors.green, "Mei 25, 06:30", NetworkImage("https://i.ibb.co/MSqdrmV/pp.jpg")),
            callPhone("Ali", Icons.call_made, Colors.green, "Mei 25, 08:25", NetworkImage("https://cdn.idntimes.com/content-images/post/20180920/4faca301c0d25bbfa08bb1256a1c71e2.jpg")),
            callPhone("Ayu Ginanjar", Icons.call_missed, Colors.red, "Mei 25, 12:03", NetworkImage("https://lh3.googleusercontent.com/proxy/SvpJipvePYyeCRAm7GzOhJjShKePN_r4yag05BsUWH5A4_PJyqZizSz-8oarheZiORHVfGpsiRluOv8YuF3kGNeGWLi31hv0DqXeV6JKLk0CFXIvufsHmu70sA=w1200-h630-p-k-no-nu")),
            callPhone("Siti Stikus", Icons.call_received, Colors.green, "Mei 25, 13:55", NetworkImage("https://1.bp.blogspot.com/-PgQ2tI2fbnU/X9tIboO0k2I/AAAAAAAAQWI/RqE3Lj-k31g4lvwkFwuccPZZ2Q_LzBp0wCPcBGAsYHg/s736/9e875e099e7a0ce717fa9956c464deb0.jpg")),
            callPhone("Putri Rahayu", Icons.call_missed, Colors.red, "Mei 25, 21:15", NetworkImage("https://i.pinimg.com/736x/43/c1/66/43c166f2ef2613ad393eccdff5cac10a.jpg")),
            callPhone("Rahmat", Icons.call_received, Colors.red, "Mei 28, 07:20", NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            callPhone("Rahmat", Icons.call_received, Colors.red, "Mei 28, 07:30", NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            callPhone("Rahmat", Icons.call_received, Colors.red, "Mei 28, 08:00", NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            callPhone("Rahmat", Icons.call_received, Colors.red, "Mei 28, 08:30", NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget callPhone(String name, IconData iconSitus, Color iconColor, String Time, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 40,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconSitus,
              color: iconColor,
              size: 20,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
