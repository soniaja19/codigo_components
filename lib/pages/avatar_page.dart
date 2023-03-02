import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AvatarPage"),
        actions: const [
          Icon(
            Icons.thumb_down,
          ),
          Icon(
            Icons.person,
          ),
          Icon(
            Icons.more_vert,
          ),
          CircleAvatar(
            backgroundColor: Colors.pink,
          ),
        ],
      ),
      body: Column(
        children: const [
          // Image.network(
          //   "https://images.pexels.com/photos/9148238/pexels-photo-9148238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          //   width: 350,
          //   height: 500,
          //   alignment: const Alignment(0.100, 0.100),
          // )
          FadeInImage(
            placeholder: AssetImage("assets/images/lk.gif"),
            fadeInDuration: Duration(seconds: 3), //Se utilza para animaciones
            fadeInCurve: Curves.bounceIn, //Se utilza para animaciones
            image: NetworkImage(
              "https://images.pexels.com/photos/10162536/pexels-photo-10162536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Text("Atràs"),
      //   ),
      // ),
    );
  }
}
