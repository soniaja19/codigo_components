import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input Page",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            /* Para ecribir*/ TextField(
              cursorColor: Colors.blue,
              cursorWidth: 7,
              // textAlign: TextAlign.center,
              textAlign: TextAlign.start,
              maxLength: 20, //Controlar la cantidad de letras (elementos)
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: Colors.pinkAccent,
              ),
              decoration: const InputDecoration(
                hintText: "Ingresa tu correo electrónico",
                icon: Icon(Icons.mail),
                prefixIcon: Icon(Icons.location_city),
                suffixIcon: Icon(Icons.person),
                // labelText: "Correo Electronico", */No se puede utilizar un labelText junto al Label
                label: Text("Ingresa tu correo electrónico"),
              ),
              onChanged: (String value) {
                print(value);
              },
              onSubmitted: (String mandarina) {
                print("wwwww $mandarina");
              },
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              style: GoogleFonts.manrope(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: "Buscar Producto..............",
                hintStyle: TextStyle(
                  color: Colors.pink.withOpacity(0.5),
                ),
                fillColor: const Color.fromARGB(0, 197, 59, 167),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.4),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 12,
                ),
                focusedBorder:
                    OutlineInputBorder /*el borde aparece en todo el borde*/ (
                  //UnderlineInputBorder
                  borderRadius: BorderRadius.circular(30),
                  // borderSide: const BorderSide(
                  //   color: Colors.pink,
                  //   width: 5.0,
                  // ),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
