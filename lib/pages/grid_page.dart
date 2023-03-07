import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridPage extends StatelessWidget {
  List<Map<String, dynamic>> superheroes = [
    {
      "superhero": "Batman",
      "publisher": "DC Comics",
      "alter_ego": "Bruce Wayne",
      "first_appearance": "Detective Comics #27",
      "characters": "Bruce Wayne",
      "image":
          "https://i0.wp.com/batman-news.com/wp-content/uploads/2022/11/The-Adventures-of-Batman-Blu-ray-Featured-01.jpg?fit=1600%2C900&quality=80&strip=info&ssl=1"
    },
    {
      "superhero": "Superman",
      "publisher": "DC Comics",
      "alter_ego": "Kal-El",
      "first_appearance": "Action Comics #1",
      "characters": "Kal-El",
      "image":
          "https://images.pexels.com/photos/11201445/pexels-photo-11201445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      "superhero": "Flash",
      "publisher": "DC Comics",
      "alter_ego": "Jay Garrick",
      "first_appearance": "Flash Comics #1",
      "characters": "Jay Garrick, Barry Allen, Wally West, Bart Allen",
      "image":
          "https://i0.wp.com/www.lacasadeel.net/wp-content/uploads/2022/01/Sin-titulo-14.png?fit=790%2C432&ssl=1"
    },
    {
      "superhero": "Green Lantern",
      "publisher": "DC Comics",
      "alter_ego": "Alan Scott",
      "first_appearance": "All-American Comics #16",
      "characters":
          "Alan Scott, Hal Jordan, Guy Gardner, John Stewart, Kyle Raynor, Jade, Sinestro, Simon Baz",
      "image":
          "https://cdn.shopify.com/s/files/1/0521/2418/8872/products/hr_twth908706.jpg?v=1636056034"
    },
    {
      "superhero": "Green Arrow",
      "publisher": "DC Comics",
      "alter_ego": "Oliver Queen",
      "first_appearance": "More Fun Comics #73",
      "characters": "Oliver Queen",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Wonder Woman",
      "publisher": "DC Comics",
      "alter_ego": "Princess Diana",
      "first_appearance": "All Star Comics #8",
      "characters": "Princess Diana",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Martian Manhunter",
      "publisher": "DC Comics",
      "alter_ego": "J'onn J'onzz",
      "first_appearance": "Detective Comics #225",
      "characters": "Martian Manhunter",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Robin/Nightwing",
      "publisher": "DC Comics",
      "alter_ego": "Dick Grayson",
      "first_appearance": "Detective Comics #38",
      "characters": "Dick Grayson",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Blue Beetle",
      "publisher": "DC Comics",
      "alter_ego": "Dan Garret",
      "first_appearance": "Mystery Men Comics #1",
      "characters": "Dan Garret, Ted Kord, Jaime Reyes",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Black Canary",
      "publisher": "DC Comics",
      "alter_ego": "Dinah Drake",
      "first_appearance": "Flash Comics #86",
      "characters": "Dinah Drake, Dinah Lance",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Spider Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Peter Parker",
      "first_appearance": "Amazing Fantasy #15",
      "characters": "Peter Parker",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Captain America",
      "publisher": "Marvel Comics",
      "alter_ego": "Steve Rogers",
      "first_appearance": "Captain America Comics #1",
      "characters": "Steve Rogers",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Iron Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Tony Stark",
      "first_appearance": "Tales of Suspense #39",
      "characters": "Tony Stark",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Thor",
      "publisher": "Marvel Comics",
      "alter_ego": "Thor Odinson",
      "first_appearance": "Journey into Myster #83",
      "characters": "Thor Odinson",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Hulk",
      "publisher": "Marvel Comics",
      "alter_ego": "Bruce Banner",
      "first_appearance": "The Incredible Hulk #1",
      "characters": "Bruce Banner",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Wolverine",
      "publisher": "Marvel Comics",
      "alter_ego": "James Howlett",
      "first_appearance": "The Incredible Hulk #180",
      "characters": "James Howlett",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Daredevil",
      "publisher": "Marvel Comics",
      "alter_ego": "Matthew Michael Murdock",
      "first_appearance": "Daredevil #1",
      "characters": "Matthew Michael Murdock",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Hawkeye",
      "publisher": "Marvel Comics",
      "alter_ego": "Clinton Francis Barton",
      "first_appearance": "Tales of Suspense #57",
      "characters": "Clinton Francis Barton",
      "image":
          "https://i0.wp.com/www.lacasadeel.net/wp-content/uploads/2022/01/Sin-titulo-14.png?fit=790%2C432&ssl=1"
    },
    {
      "superhero": "Cyclops",
      "publisher": "Marvel Comics",
      "alter_ego": "Scott Summers",
      "first_appearance": "X-Men #1",
      "characters": "Scott Summers",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grid Page",
        ),
      ),
      // body: GridView(
      // ),
      body: GridView.count(
        crossAxisCount: 2 /*Esta es como la columna*/,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.8,
        //Opcion 1
        // children: [
        //   ...List.generate(
        //     superheroes.length,
        //     (index) => ItemSuperHeroe(
        //       dataSuperheroe: superheroes[index],
        //     ),
        //   ),
        //   const Text("Hola"),
        // ],

        //Opción 2 lista de widgets con su colección
        // children:
        //     List.generate(superheroes.length, (index) => ItemSuperHeroe()),

        //Opción 3 lista de widgets con su colección
        children: superheroes
            .map(
              (mandarina) => ItemSuperHeroe(
                dataSuperheroe: mandarina,
              ),
            )
            .toList(),

        //Opción 4 para agregar componentes con los punto
        // children: [
        //   ...superheroes.map((mandarina) => ItemSuperHeroe()).toList(),
        // ],
      ),
      // body: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemCount: superheroes.length,
      //   itemBuilder: (BuildContext contex, int index) {
      //     return ItemSuperHeroe();
      //   },
      // ),
    );
  }
}

class ItemSuperHeroe extends StatelessWidget {
  Map<String, dynamic> dataSuperheroe;

  ItemSuperHeroe({required this.dataSuperheroe});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                dataSuperheroe["image"],
                width: double.infinity,
              ),
            ),
          ),
          Text(
            dataSuperheroe["superhero"],
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w800,
              fontSize: 12,
            ),
          ),
          Text(
            dataSuperheroe["alter_ego"],
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          Text(
            dataSuperheroe["publisher"],
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          Text(
            "Batman es un personaje de cómic creado por los estadounidenses Bob Kane y Bill Finger, ​ y propiedad de DC Comics. Apareció por primera vez en la historia titulada «El caso del sindicato químico» de la revista Detective Comics N.º 27, lanzada por la editorial National Publications el 30 de marzo",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
