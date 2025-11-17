import 'package:flutter/material.dart';
import 'package:movie_booking_app/pages/home.dart';
import 'package:movie_booking_app/pages/booking.dart';
import 'package:movie_booking_app/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;

  late Home HomePage;
  late Booking booking;
  late Profile profile;

  int currentTabIndex = 0;

  @override
  void initState() {
    HomePage = Home();

    booking = Booking();
    profile = Profile();

    pages = [HomePage, booking, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Color.fromARGB(255, 204, 151, 7),
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(Icons.home, color: Colors.white, size: 30.0),
          Icon(Icons.book, color: Colors.white, size: 30.0),
          Icon(Icons.person, color: Colors.white, size: 30.0),
        ],
      ),

      // 👉 This line is required
      body: pages[currentTabIndex],
    );
  }
}
