import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextup/utils/profile_list_tile.dart';

class ProfilePaage extends StatelessWidget {
  const ProfilePaage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              // Language button
              Padding(
                padding: const EdgeInsets.only(left: 290.0, top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.language,
                          color: const Color.fromARGB(255, 51, 133, 51),
                          size: 20,
                        ),
                        Text(
                          'Language',
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 51, 133, 51),
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),

              //Person Avatar Icon
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey.shade300,
                child: CircleAvatar(
                  radius: 68,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey.shade600,
                    size: 70.0,
                  ),
                ),
              ),

              SizedBox(height: 25.0),

              Center(
                child: Text(
                  'Welcome to NextUp',
                  style: GoogleFonts.merriweather(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 6.0),

              Center(
                child: Text(
                  'Sign in to book appointments, tracks your trips, and get ',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Center(
                child: Text(
                  'peronalized recommendations',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              //Language bottom
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 51, 133, 51),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //lang Icon
                      Icon(
                        Icons.language,
                        color: const Color.fromARGB(255, 51, 133, 51),
                      ),
                      SizedBox(width: 6.0),

                      //Language text
                      Text(
                        'Language',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 51, 133, 51),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 38.0),

              //Sign In button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 37, 105, 37),
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 51, 133, 51),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Sign In
                      Text(
                        'Sign In',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.0),

              //Create Account button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 51, 133, 51),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Sign In
                      Text(
                        ' Create Account',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 51, 133, 51),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 28.0),

              ProfileListTile(
                profileIcon: Icons.calendar_today,
                title: 'Book Appointments',
                subtitle: 'Schedule appointments at local shops',
              ),
              
              ProfileListTile(
                profileIcon: Icons.train,
                title: 'Plain Your Trips',
                subtitle: 'Get directions for public transport',
              ),

              ProfileListTile(
                profileIcon: Icons.notifications_active,
                title: 'Stay Updated',
                subtitle: 'Recieve notifications about your bookings',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
