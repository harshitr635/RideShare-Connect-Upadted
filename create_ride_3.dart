import 'package:flutter/material.dart';

import 'create_ride_4.dart';

class SelectVehiclePageThree extends StatelessWidget{
  const SelectVehiclePageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Center(
                      child: Text(
                        'Enter Price and Phone Number',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 90,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Enter the price you want to charge',
                              hintText: '50',
                              filled: true, fillColor: Colors.pink[50], border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none)
                          ),
                        ),
                        SizedBox(height: 25),
                        //To field
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Contact Number', hintText: '+91 180045448989', filled: true, fillColor: Colors.pink[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[300],
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 6,
                          ),
                          child: const Text(
                            'Generate OTP',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 50),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter OTP', hintText: 'XXXX', filled: true, fillColor: Colors.pink[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70,),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SelectVehiclePageFour()));
                        }, style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                      ),
                        child: Text('Continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }

}