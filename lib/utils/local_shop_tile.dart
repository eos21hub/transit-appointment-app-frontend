import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class LocalShopTile extends StatelessWidget {
  final String localistName;
  const LocalShopTile({super.key, required this.localistName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: const Color.fromARGB(255, 252, 239, 244),
                child: Icon(
                  Icons.store,
                  size: 21.0,
                  color: const Color.fromARGB(255, 248, 117, 161),
                ),
              ),

              SizedBox(height: 8.0),

              Column(
                children: [
                  Text(
                    localistName,
                    style: GoogleFonts.poppins(fontSize: 12.0),
                  ),

                  SizedBox(height: 4.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(246, 250, 225, 1),
                        size: 16,
                      ),
                      SizedBox(width: 1.5),
                      Text('0.0', style: TextStyle(fontSize: 12.0)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
