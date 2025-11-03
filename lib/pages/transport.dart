import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextup/components/select_location.dart';
import 'package:nextup/utils/transport_bars.dart';

// ignore: must_be_immutable
class TransportPage extends StatelessWidget {

  void Function()? onTap;
   TransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 310.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0),
                ),
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: [
                    Colors.white,
                    // const Color.fromARGB(255, 242, 217, 225),
                    const Color.fromARGB(255, 241, 95, 144),
                  ],
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text of Bus & Trains
                    Text(
                      'Search Busses & Trains',
                      style: GoogleFonts.merriweather(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 18.0),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => showModalBottomSheet(context: context,
                              isScrollControlled: true,
                               builder: (context) => SelectLocation()) ,
                              child: TransportBars(
                                tranIcon: Icons.my_location,
                                transText: 'Current Location',
                              ),
                            ),
                            SizedBox(height: 14.0),
                            GestureDetector(
                              onTap: () => showModalBottomSheet(context: context,
                              isScrollControlled: true,
                               builder: (context) => SelectLocation()),
                              child: TransportBars(
                                tranIcon: Icons.location_pin,
                                transText: 'Enter your destination',
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.swap_vert,
                          color: Colors.grey.shade500,
                        ),
                        
                      ],
                    ),

                    SizedBox(height: 22.0),

                    Row(
                      children: [
                        Container(
                          width: 165,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 27, 109, 29),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.train,
                                  size: 20.0,
                                  color: Colors.white,
                                ),

                                Text(
                                  '0 selected',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),

                                Icon(
                                  Icons.tune,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 12.0),

                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 42, 111, 44),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.route,
                                  size: 20.0,
                                  color: Colors.white,
                                ),

                                Text(
                                  'Best Routes',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),

                                Icon(
                                  Icons.tune,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40.0),

            Text(
              'Find optimal route',
              style: GoogleFonts.merriweather(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              'Plan your trips efficiently. Enter your destination and choose ',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 1.0),
            Text(
              ' the most convinenet route. The application will slecet the',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 1.0),
            Text(
              ' most convinent and fastest routes, taking into account your ',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 1.0),
            Text(
              ' wishes for the trip ',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.grey.shade500,
              ),
            ),

            SizedBox(height: 32.0),

            Container(
              width: 100,
              height: 4.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 182, 78),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),

            SizedBox(height: 26.0),

            Text(
              'No recent seraches',
              style: GoogleFonts.poppins(
                fontSize: 13.0,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 18.0,),

            Text(
              ' Your recent trip searches will appear here ',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
