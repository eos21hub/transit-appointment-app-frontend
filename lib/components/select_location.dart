import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // small notch container
            Container(
              margin: EdgeInsets.only(left: 180.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 4,
              width: 50,
            ),
            SizedBox(height: 28.0),

            // select location text
            Text(
              'Search Location',
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 22.0),

            // serach loation textfield
            Container(
              width: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 209, 209, 209),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hint: Text(
                      'Search for a location...',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 22.0),

            // use current location
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  //icon
                  Icon(Icons.my_location, color: Colors.blue),

                  SizedBox(width: 18.0),

                  //text
                  Text('Use current location', style: GoogleFonts.poppins()),
                ],
              ),
            ),

            SizedBox(height: 8.0),

            Divider(),
            SizedBox(height: 36.0),

            Center(
              child: Text(
                'No saved location yet',
                style: GoogleFonts.poppins(color: Colors.grey.shade500),
              ),
            ),
            Center(
              child: Text(
                'Search for a location to get started',
                style: GoogleFonts.poppins(color: Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ),

      // horizzontal line

      // No saved location text
    );
  }
}
