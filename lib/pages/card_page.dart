import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Card Page"),
      ),
      body: Column(
        children: [
          //Container 1
          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 12,
                  offset: const Offset(4, 4), //Sombras
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Una tarjeta es un contenedor de contenido flexible y extensible. Incluye opciones para encabezados y pies de página, una amplia variedad de contenido, colores de fondo contextuales y potentes opciones de visualización. ",
                  textAlign: TextAlign.center,
                  maxLines: 3, //Se le indica que el textp tendrà 3 lineas
                  overflow: TextOverflow.ellipsis, //Colocar ...
                  style: GoogleFonts.montserrat(
                    height: 1.37, // espaciado entre las lìneas
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8.5,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: const Text("Share"),
                  ),
                )
              ],
            ),
          ),
          //Container 2
          Container(
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Row(
              children: [
                // ClipRRect(
                //   //Para colocar los bordes de la imagen
                //   borderRadius: const BorderRadius.only(
                //       topLeft: Radius.circular(14),
                //       bottomLeft: Radius.circular(14)),
                //   child: Image.network(
                //     "https://images.pexels.com/photos/2132008/pexels-photo-2132008.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                //     height: 150.0,
                //     width: 140,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        bottomLeft: Radius.circular(14)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://images.pexels.com/photos/2132008/pexels-photo-2132008.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Bienvenida General al grupo de Flutter en Codigo",
                          style: GoogleFonts.manrope(
                            fontSize: 14.0,
                            height: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Le quitó dos estrellas, porque, al poner el Smartphone en el lector de tarjetas de transporte público no funciona, no sirve, diferente es con la tarjeta de transporte que simplemente detecta y habilita el paso o entrada con esta aplicación aunque esté aparejada no sirve en el lector NFC del transporte público y pasa uno pena, vergüenza porque todo el mundo, los demás usuarios quedan a la expectativa de algo nunca visto desde el celular.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 14.0,
                            height: 2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //Container 3
          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              border: Border.all(color: Colors.pink.withOpacity(0.20)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "La Liga de la Justicia",
                        style: GoogleFonts.manrope(
                          fontSize: 14.0,
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Le quitó dos estrellas, porque, al poner el Smartphone en el lector de tarjetas de transporte público no funciona, no sirve, diferente es con la tarjeta de transporte que simplemente detecta y habilita el paso o entrada con esta aplicación aunque esté aparejada no sirve en el lector NFC del transporte público y pasa uno pena, vergüenza porque todo el mundo, los demás usuarios quedan a la expectativa de algo nunca visto desde el celular.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 14.0,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  //margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://images.pexels.com/photos/2132008/pexels-photo-2132008.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
