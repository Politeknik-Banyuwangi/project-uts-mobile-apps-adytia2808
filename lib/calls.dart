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
            callPhone("Raiden Shogun", Icons.call_missed, Colors.red, "July 18, 14:02", NetworkImage("https://berita.yodu.id/wp-content/uploads/2022/01/Header.webp")),
            callPhone("Gojo Satoru", Icons.call_made, Colors.green, "July 02, 18:33", NetworkImage("https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg")),
            callPhone("Kamisato Ayato", Icons.call_received, Colors.green, "Mei 31, 07:15", NetworkImage("https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg")),
            callPhone("Kirigaya Kazuto", Icons.call_made, Colors.green, "August 12, 18:33", NetworkImage("https://animeanalyst.files.wordpress.com/2016/07/kirito.png")),
            callPhone("Gojo Satoru", Icons.call_missed, Colors.red, "Feb 19, 10:33", NetworkImage("https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg")),
            callPhone("Gojo Satoru", Icons.call_received, Colors.green, "Feb 02, 12:33", NetworkImage("https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg")),
            callPhone("Kamisato Ayato", Icons.call_made, Colors.green, "Jan 28, 22:15", NetworkImage("https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg")),
            callPhone("Kamisato Ayaka", Icons.call_missed, Colors.red, "July 18, 14:02", NetworkImage("https://foto.kontan.co.id/eQpBGeMMmMkhHSwU5oO1RAn-Gjw=/smart/2021/07/15/2100661850p.jpg")),
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

  Widget callPhone(String name, IconData iconData, Color iconColor, String Time, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
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
