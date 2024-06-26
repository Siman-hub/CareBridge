import 'package:carebridge/appointment/appointment.dart';
import 'package:carebridge/appointment/appointment_view.dart';
import 'package:carebridge/appointment/category.dart';
import 'package:carebridge/bookedAppoinments/bookedAppointments.dart';
import 'package:carebridge/home/widgets/home.dart';
import 'package:carebridge/profile/profile.dart';
import 'package:carebridge/shop/shop.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<Widget> screens = [
    HomeScreen(),
    Category(),
    MedicineShop(),
    ProfileScreen(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        leading: Container(
          margin: EdgeInsets.only(left: 4),
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            radius: 10,
            child: Image(image: AssetImage("assets/logo.png")),
          ),
        ),
        title: Text("CareBridge"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopify, color: Colors.cyan,))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: screens[currentindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        unselectedItemColor: Colors.cyan,
        selectedItemColor: Colors.green[700],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Appointment'),
          BottomNavigationBarItem(icon: Icon(Icons.shopify), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ],
  ),
    );
  }
}