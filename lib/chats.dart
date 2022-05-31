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
            chatPhone("Ayang", "Asslamualaikum", "16:38", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/BwqbJxg/ayang.jpg")),
            chatPhone("Sokles Ayam", "Ready Ayam Jago Bos!", "12:24", Icons.done, Colors.grey, NetworkImage("https://i.ibb.co/QfpJXCq/pp2.jpg")),
            chatPhone("Wahyu", "pcc", "10:18", Icons.done_all, Colors.grey, NetworkImage("https://i.ibb.co/MSqdrmV/pp.jpg")),
            chatPhone("Ali", "Mabar", "19:18", Icons.done, Colors.grey, NetworkImage("https://cdn.idntimes.com/content-images/post/20180920/4faca301c0d25bbfa08bb1256a1c71e2.jpg")),
            chatPhone("Ayu Ginanjar", "P", "13:45", Icons.done, Colors.grey, NetworkImage("https://lh3.googleusercontent.com/proxy/SvpJipvePYyeCRAm7GzOhJjShKePN_r4yag05BsUWH5A4_PJyqZizSz-8oarheZiORHVfGpsiRluOv8YuF3kGNeGWLi31hv0DqXeV6JKLk0CFXIvufsHmu70sA=w1200-h630-p-k-no-nu")),
            chatPhone("Siti Stikus", "P", "15:25", Icons.done, Colors.grey, NetworkImage("https://1.bp.blogspot.com/-PgQ2tI2fbnU/X9tIboO0k2I/AAAAAAAAQWI/RqE3Lj-k31g4lvwkFwuccPZZ2Q_LzBp0wCPcBGAsYHg/s736/9e875e099e7a0ce717fa9956c464deb0.jpg")),
            chatPhone("Putri Rahayu", "Suker", "09:38", Icons.done_all, Colors.blue, NetworkImage("https://i.pinimg.com/736x/43/c1/66/43c166f2ef2613ad393eccdff5cac10a.jpg")),
            chatPhone("Rahmat", "Mabar dect", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            chatPhone("Lala", "Lali aku", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            chatPhone("Suci", "Ayoo", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            chatPhone("Marita", "Mumet", "17:38", Icons.done_all, Colors.grey, NetworkImage("https://i0.wp.com/www.ekor9.com/wp-content/uploads/2018/06/animasi-cewek-bawa-kucing.jpg")),
            chatPhone("Adel", "Amu neng ndi lee!", "13:24", Icons.done, Colors.grey, NetworkImage("https://i.pinimg.com/736x/0c/b5/94/0cb59415ab66a2833f96ca31d58d82ee.jpg")),
            chatPhone("Safira", "Aku gak paham", "11:18", Icons.done_all, Colors.grey, NetworkImage("https://lh6.googleusercontent.com/proxy/HUzuy_OtS0d39jfDYQfaECKCI7T83vxt_EaVe-Vv1vihzmUvswtvWVXpvZJqY5axoC9X3L2w7ejvmGfDSglo38h0M0gwXEYY06MDxxJwD0TFnJryB2AGLlSh0hieRopI=w1200-h630-p-k-no-nu")),
            chatPhone("Royan", "P", "19:18", Icons.done, Colors.grey, NetworkImage("https://img.eramuslim.com/media/2012/10/kucing.jpg")),
            chatPhone("Rahmat", "P", "13:45", Icons.done, Colors.grey, NetworkImage("https://cdn.idntimes.com/content-images/post/20210519/4-e4848cb71c4e0ea23b21529796096691.png")),
            chatPhone("Tiara", "Opo", "15:25", Icons.done, Colors.grey, NetworkImage("https://1.bp.blogspot.com/-PgQ2tI2fbnU/X9tIboO0k2I/AAAAAAAAQWI/RqE3Lj-k31g4lvwkFwuccPZZ2Q_LzBp0wCPcBGAsYHg/s736/9e875e099e7a0ce717fa9956c464deb0.jpg")),
            chatPhone("Ananda", "Lali", "09:38", Icons.done_all, Colors.blue, NetworkImage("https://i.pinimg.com/736x/43/c1/66/43c166f2ef2613ad393eccdff5cac10a.jpg")),
            chatPhone("Halik", "Oit", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://i.ibb.co/njWWvq0/pp3.jpg")),
            chatPhone("Bagas", "Oghey", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://1.bp.blogspot.com/-O8LdkhG-bn4/X9dkzUbYK0I/AAAAAAAAQJg/xO118ZVuPSkVkelsaKxi2-nFipnqv2vkACPcBGAsYHg/s907/Screenshot_20201214-115610_resize_41.jpg")),
            chatPhone("Suci", "Ayoo", "20:00", Icons.done_all, Colors.blue, NetworkImage("https://cdn.idntimes.com/content-images/post/20210519/4-e4848cb71c4e0ea23b21529796096691.png")),
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

  Widget chatPhone(String name, String des, String time, IconData iconSitus, Color iconColor, NetworkImage img) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: img,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(
            iconSitus,
            size: 16,
            color: iconColor,
          ),
          SizedBox(width: 5),
          Text(
            des,
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
