import 'package:codigo_componets/pages/alert_page.dart';
import 'package:codigo_componets/pages/card_page.dart';
import 'package:codigo_componets/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            SingleChildScrollView /*este widget para ver todos los botones que has creado, destizar */ (
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Image.network("https://images.pexels.com/photos/13596107/pexels-photo-13596107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                // ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   decoration: const BoxDecoration(
                //     color: Colors.red,
                //     // borderRadius: BorderRadius.circular(30.0),
                //   ),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(30.0),
                //     child: Image.network(
                //       "https://images.pexels.com/photos/13596107/pexels-photo-13596107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 120,
                  width: 120,
                  // margin: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.0),
                    //Cuando utilizamos un BoxDecoration en un Container, debemos colocar
                    //dentro el color porque ese lo gestiona.
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/13596107/pexels-photo-13596107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        offset: const Offset(10, 10),
                        blurRadius: 12.0,
                      ),
                      // BoxShadow(
                      //   color: Colors.red,
                      //   offset: Offset(-10, -10),
                      //   blurRadius: 12.0,
                      // ),
                    ],
                  ),
                ),
                Text(
                  "Flutter componets",
                  style: GoogleFonts.sofia(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "En está clase he aprendido nuevos componentes. Me agrada aprender nuevas cosas y que el prodesor sea divertido.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sofia(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                ItemsMenuWidget(
                  title: "Avatar",
                  description: " Detales de los Abatars",
                  icon: Icons.person,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
                ItemsMenuWidget(
                  title: "Alerta",
                  description: "Detalle de las Mandarinas",
                  icon: Icons.add_alert,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AlertPage()));
                  },
                ),
                ItemsMenuWidget(
                  title: "Cards",
                  description: "Detalle de los Cards",
                  icon: Icons.card_giftcard,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CardPage()));
                  },
                ),
                ItemsMenuWidget(
                  title: "Imput",
                  description: "Detalle de los Inputs",
                  icon: Icons.input,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputPage()));
                  },
                ),
                ItemsMenuWidget(
                  title: "List View",
                  description: "Detalle de los Views",
                  icon: Icons.input,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListView()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemsMenuWidget extends StatelessWidget {
  String title;
  String description;
  IconData icon;
  // Function matasquita;
  VoidCallback ontap;

  ItemsMenuWidget({
    required this.title,
    required this.description,
    required this.icon,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   matasquita();
      // },

      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.8),
          boxShadow: [
            /// Este es sombra.
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            title,
            style: GoogleFonts.sofia(
              fontSize: 14,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            description,
            style: GoogleFonts.manrope(
              fontSize: 10,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Icon(icon),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
