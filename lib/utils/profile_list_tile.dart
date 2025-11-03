import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class ProfileListTile extends StatelessWidget {
  final IconData profileIcon;
  final String title;
  final String subtitle;
  const ProfileListTile({
    super.key,
    required this.profileIcon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //Leading Icon
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 219, 239, 255),
        radius: 25.0,
        child: Icon(
          profileIcon,
          color: const Color.fromARGB(255, 51, 145, 222),
        ),
      ),

      //Title text
      title: Text(title, style: GoogleFonts.poppins()),

      //Subtitle text
      subtitle: Text(
        subtitle,
        style: GoogleFonts.poppins(fontSize: 12.0),
      ),
    );
  }
}
