import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconcolor;

  const ServiceTile({
    super.key,
    required this.icon,
    required this.title,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95 ,
      height: 95,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 93, 143),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            //Service Icon
            Icon(icon, 
            color: iconcolor),
            SizedBox(height: 8.0),
            //Service text
            Text(title, style: GoogleFonts.poppins(color: Colors.white, )),
          ],
        ),
      ),
    );
  }
}
