import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  myAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 20,
          title: const Text("Hola"),
          content: const Text(
            "Este es el contenido de mi AlertDialog, donde estoy  practicando",
          ),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Aceptar",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Cancelar",
              ),
            ),
          ],
        );
      },
    );
  }

  myAlert2(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 16,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  color: const Color(0xff789BDB),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(
                thickness: 1.2,
              ),
              // const CircleAvatar( //tambien se puede usae aquello
              //   radius: 26,
              //   child: Icon(
              //     Icons.person,
              //     color: Color(0xff789BDB),
              //     size: 30.0,
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(12),
                // height: 100,
                // width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xff789BDB),
                  //   borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "Sonia Justiniano",
                style: GoogleFonts.poppins(
                  color: const Color(0xff51688f),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Read the care provided Sunday, Jan 9",
                style: GoogleFonts.poppins(
                  color: const Color(0xff51688f),
                  fontWeight: FontWeight.w500,
                  fontSize: 11.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFC267),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFC267),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFC267),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFC267),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffE8EAED),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alerta"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // myAlert(context);
              myAlert2(context);
            },
            child: const Text("Alerta 1"),
          ),
        ],
      ),
    );
  }
}
