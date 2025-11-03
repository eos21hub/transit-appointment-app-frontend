import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:nextup/utils/local_shop_tile.dart';
import 'package:nextup/utils/service_tile.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Look awesome title
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 5, 89, 37), // green
                        Color.fromARGB(255, 196, 238, 197), // whitish green
                      ],
                    ),

                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Look Awesome & Save Some',
                            style: GoogleFonts.merriweather(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),

                          Text(
                            'Time',
                            style: GoogleFonts.merriweather(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 18.0),

                          Text(
                            'Book your appointment at the best shop in',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12.0,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'Barcelona',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12.0,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),

                      // cable icon
                      Column(
                        children: [
                          Icon(Icons.cable, size: 90.0, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),

                // Search bar
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/search_results'),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 237, 237),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          // Search Icon
                          Icon(Icons.search, color: Colors.orange, size: 25),

                          SizedBox(width: 12.0),

                          // Search text
                          Text(
                            'Search for shops...',
                            style: GoogleFonts.poppins(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),

                // Services text
                Text(
                  'Services',
                  style: GoogleFonts.merriweather(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.0),

                // Service tile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ServiceTile(
                      icon: Icons.face,
                      title: 'Beard',
                      iconcolor: const Color.fromARGB(255, 155, 204, 244),
                    ),
                    ServiceTile(
                      icon: Icons.face,
                      title: 'Facial',
                      iconcolor: const Color.fromARGB(255, 234, 244, 155),
                    ),
                    ServiceTile(
                      icon: Icons.cut,
                      title: 'Hair Cut',
                      iconcolor: Colors.grey.shade400,
                    ),
                    ServiceTile(
                      icon: Icons.waves,
                      title: 'Hair Spa',
                      iconcolor: const Color.fromARGB(255, 155, 204, 244),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    ServiceTile(
                      icon: Icons.brush,
                      title: 'Make Up',
                      iconcolor: const Color.fromARGB(255, 234, 244, 155),
                    ),
                    SizedBox(width: 8.0),
                    ServiceTile(
                      icon: Icons.spa,
                      title: 'Massage',
                      iconcolor: Colors.grey.shade400,
                    ),
                  ],
                ),
                SizedBox(height: 30.0),

                //local shop text
                Text(
                  'Local Shops ',
                  style: GoogleFonts.merriweather(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.0),

                // Local list tile
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      LocalShopTile(localistName: 'Annet Abbiyesuku'),
                      SizedBox(width: 16.0),

                      LocalShopTile(localistName: 'Lizzy Lashes'),
                      SizedBox(width: 16.0),

                      LocalShopTile(localistName: 'Musah De Barber'),
                      SizedBox(width: 16.0),

                      LocalShopTile(localistName: 'SWEET VISAN'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
