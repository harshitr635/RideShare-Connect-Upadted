import 'dart:ui';

import 'package:flutter/material.dart';

import 'create_ride_1.dart';

class RideShareApp extends StatelessWidget {
  const RideShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RideShare Connect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ensures layout adjusts for keyboard
      appBar: AppBar(
        title: const Text('RideShare Connect'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF000000), // Black
                    Color(0xFF004D40), // Dark Teal
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Connecting Rides, Sharing Journeys, Building a Greener Future',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildTextField('From', 'Leaving from', Icons.location_on),
                        const SizedBox(height: 15),
                        _buildTextField('To', 'Where are you going', Icons.location_searching),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: _buildTextField('', 'dd/mm/yyyy', Icons.calendar_today),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _buildTextField('', 'Seats', Icons.person),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[100],
                    ),
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectVehiclePage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[100],
                    ),
                    child: const Text(
                      'Create your own Ride',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60), // Extra space to avoid keyboard overlap
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTextField(String label, String hint, IconData icon) {
  return TextField(
    decoration: InputDecoration(
      labelText: label.isNotEmpty ? label : null,
      hintText: hint,
      prefixIcon: Icon(icon),
      filled: true,
      fillColor: Colors.pink[50],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
