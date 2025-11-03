import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextup/utils/profile_list_tile.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 243, 112, 156)),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 42.0, left: 18.0, right: 18.0),
          child: Column(
            children: [
              //Padlock Avatar Icons
              CircleAvatar(
                radius: 52,
                backgroundColor: const Color.fromARGB(255, 185, 223, 254),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromARGB(255, 235, 244, 250),
                  child: Icon(
                    Icons.lock_outline,
                    size: 38.0,
                    color: const Color.fromARGB(255, 95, 150, 245),
                  ),
                ),
              ),
              SizedBox(height: 32.0),

              ///Sign In text
              Text(
                'Sign In Required',
                style: GoogleFonts.merriweather(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),

              //Sub text
              Text(
                'Sign in to book appointments, track your trips,and',
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(height: 1.0),

              Text(
                'get personliazed recommendations',
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  color: Colors.grey.shade600,
                ),
              ),

              SizedBox(height: 14.0),

              //
              Container(
                height: 300,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: Colors.grey.shade200, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What you can do to your account:',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.0),

                      ProfileListTile(
                        profileIcon: Icons.calendar_today_outlined,
                        title: 'Book Appointments',
                        subtitle:
                            'Schedule appointments with your favourite specialist',
                      ),
                      ProfileListTile(
                        profileIcon: Icons.sell_outlined,
                        title: 'Special Offers',
                        subtitle:
                            'Recieve exclusive deals and promotions from local shops',
                      ),
                      ProfileListTile(
                        profileIcon: Icons.timer_outlined,
                        title: 'Smart Reminder',
                        subtitle:
                            'Never miss an appointment with timely reminders',
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 32.0,),

              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 28.0, right: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 29, 102, 32),
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.logout,color: Colors.white,),
                        
                            Text('Sign In', style: GoogleFonts.poppins(color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 29, 102, 32)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.person_add_alt_1_outlined,color: const Color.fromARGB(255, 29, 102, 32),),
                        
                            Text(' Create Account', style: GoogleFonts.poppins(color: const Color.fromARGB(255, 29, 102, 32)),),
                          ],
                        ),
                      ),
                    ),






                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
