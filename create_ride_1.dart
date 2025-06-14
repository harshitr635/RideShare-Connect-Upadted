import 'package:flutter/material.dart';

import 'create_ride_2.dart';

class SelectVehiclePage extends StatefulWidget {
  const SelectVehiclePage({Key? key}) : super(key: key);

  @override
  State<SelectVehiclePage> createState() => _SelectVehiclePageState();
}

class _SelectVehiclePageState extends State<SelectVehiclePage> {
  int _selectedIndex = -1;

  final List<Map<String, String>> vehicles = [
    {
      'image': 'Assets/Images/bike.png',
      'label': 'Bike / two seater',
    },
    {
      'image': 'Assets/Images/car.png',
      'label': 'Car / Four seater',
    },
    {
      'image': 'Assets/Images/suv.png',
      'label': 'SUV / seven seater',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Text(
                  'Select Your Vehicle',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // Vehicle options
              for (int i = 0; i < vehicles.length; i++) ...[
                VehicleOption(
                  imagePath: vehicles[i]['image']!,
                  label: vehicles[i]['label']!,
                  isSelected: _selectedIndex == i,
                  onTap: () {
                    setState(() {
                      _selectedIndex = i;
                    });
                  },
                ),
                const SizedBox(height: 20),
              ],

              const Spacer(),

              // Continue Button
              Center(
                child: ElevatedButton(
                  onPressed: _selectedIndex != -1
                      ? () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectVehiclePageTwo()));
                    // Do something with selection
                    final selectedVehicle =
                    vehicles[_selectedIndex]['label'];
                    print('Selected: $selectedVehicle');
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                    padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 6,
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class VehicleOption extends StatelessWidget {
  final String imagePath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const VehicleOption({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 120,
            height: 100,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: isSelected ? Colors.redAccent : Colors.red[300],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: isSelected ? 6 : 3,
                    offset: Offset(2, 3),
                  )
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
