import 'dart:io';

import 'fish_species.dart'; // Import the FishSpecies class
import 'package:flutter/material.dart';

class DataBookPage extends StatelessWidget {
  DataBookPage({super.key});

  final List<FishSpecies> fishSpeciesList = [
    FishSpecies(
      scientificName: "Anthias anthias",
      commonName: "Swallowtail seaperch",
      imagePath: "assets/anthias_anthias.jpg",
    ),
    FishSpecies(
      scientificName: "Atherinomorus lacunosus",
      commonName: "Wide-banded hardyhead silverside",
      imagePath: "assets/atherinomorus_lacunosus.jpg",
    ),
    FishSpecies(
      scientificName: "Belone belone",
      commonName: "Garfish",
      imagePath: "assets/belone_belone.jpg",
    ),
    FishSpecies(
      scientificName: "Boops boops",
      commonName: "Bogue",
      imagePath: "assets/boops_boops.jpg",
    ),
    FishSpecies(
      scientificName: "Chlorophthalmus agassizi",
      commonName: "Shortnose greeneye",
      imagePath: "assets/chlorophthalmus_agassizi.jpg",
    ),
    FishSpecies(
      scientificName: "Coris julis",
      commonName: "Mediterranean Rainbow Wrasse",
      imagePath: "assets/coris_julis.jpg",
    ),
    FishSpecies(
      scientificName: "Dasyatis centroura",
      commonName: "Roughtail Stingray",
      imagePath: "assets/dasyatis_centroura.jpg",
    ),
    FishSpecies(
      scientificName: "Epinephelus caninus",
      commonName: "Dogtooth grouperr",
      imagePath: "assets/epinephelus_caninus.jpg",
    ),
    FishSpecies(
      scientificName: "Gobius niger",
      commonName: "Black Goby",
      imagePath: "assets/gobius_niger.jpg",
    ),
    FishSpecies(
      scientificName: "Mugil cephalus",
      commonName: "Flathead Grey Mullet",
      imagePath: "assets/mugil_cephalus.jpg",
    ),
    FishSpecies(
      scientificName: "Phycis phycis",
      commonName: "Forkbeard",
      imagePath: "assets/phycis_phycis.jpg",
    ),
    FishSpecies(
      scientificName: "Polyprion americanus",
      commonName: "Wreckfish",
      imagePath: "assets/polyprion_americanus.jpg",
    ),
    FishSpecies(
      scientificName: "Pseudocaranx dentex",
      commonName: "White Trevally",
      imagePath: "assets/pseudocaranx_dentex.jpg",
    ),
    FishSpecies(
      scientificName: "Rhinobatos cemiculus",
      commonName: "Blackchin guitarfish",
      imagePath: "assets/rhinobatos_cemiculus.jpg",
    ),
    FishSpecies(
      scientificName: "Scomber japonicus",
      commonName: "Chub Mackerel",
      imagePath: "assets/scomber_japonicus.jpg",
    ),
    FishSpecies(
      scientificName: "Solea solea",
      commonName: "Common Sole",
      imagePath: "assets/solea_solea.jpg",
    ),
    FishSpecies(
      scientificName: "Squalus acanthias",
      commonName: "Picked dogfish",
      imagePath: "assets/squalus_acanthias.jpg",
    ),
    FishSpecies(
      scientificName: "Tetrapturus belone",
      commonName: "Mediterranean spearfish",
      imagePath: "assets/tetrapturus_belone.jpg",
    ),
    FishSpecies(
      scientificName: "Trachinus draco",
      commonName: "Greater Weever",
      imagePath: "assets/trachinus_draco.jpg",
    ),
    FishSpecies(
      scientificName: "Trigloporus lastoviza",
      commonName: "African Gurnard",
      imagePath: "assets/trigloporus_lastoviza.jpg",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 250, 255),
      appBar: AppBar(
        title: const Text('Data Book',
        style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: const Color.fromARGB(255, 128, 216, 255),
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: ListView.builder(
        itemCount: fishSpeciesList.length,
        itemBuilder: (context, index) {
          final fishSpecies = fishSpeciesList[index];
          return ListTile(
            leading: Image.asset(
              fishSpecies.imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(fishSpecies.scientificName),
            subtitle: Text(fishSpecies.commonName),
            onTap: () {
              // Handle tapping on a fish species to view more details if needed
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 2, 2, 2),
          unselectedItemColor: const Color.fromARGB(255, 124, 123, 123),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories_outlined),
              label: 'Data Book',
              backgroundColor: Color.fromARGB(255, 128, 216, 255)),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app_outlined),
              label: 'Exit',
            ),
          ],
          currentIndex: 1,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/about');
            } else if (index == 3) {
              exit(0); // Close the app
            }
          },
        ),
      ),
    );
  }
}
