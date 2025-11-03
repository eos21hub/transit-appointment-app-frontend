import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransportBars extends StatelessWidget {
  final IconData tranIcon;
  final String transText;
  const TransportBars({super.key, required this.tranIcon, required this.transText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            //TransIcon 
            Icon(
              tranIcon,
              color: const Color.fromARGB(255, 240, 157, 132),
            ),

            SizedBox(width: 16.0,),

            //Transtext
            Text(transText, style: GoogleFonts.poppins(),)

          ],
        ),
      ),
    );
  }
}
