import 'package:flutter/material.dart';

import 'create_ride_3.dart';

class SelectVehiclePageTwo extends StatelessWidget{
  const SelectVehiclePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
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
                    'Enter starting point and Destination',
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
                          labelText: 'From',
                          hintText: 'Leaving from',
                          filled: true, fillColor: Colors.pink[50], border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none)
                      ),
                    ),
                    SizedBox(height: 15),
                    //To field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'To', hintText: 'Where are you going', filled: true, fillColor: Colors.pink[50],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    //Date and Seats Row
                    Row(
                      children: [
                        //Date field with icon
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                            hintText: 'dd/mm/yyyy',
                            prefixIcon: Icon(Icons.calendar_today_outlined),
                            filled: true,
                            fillColor: Colors.pink[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),),
                        SizedBox(width: 10),
                        //seats field with icon
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Vacant seats', prefixIcon: Icon(Icons.person_outline),
                              filled: true, fillColor: Colors.pink[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none,
                              )
                          ),
                        ),),
                      ],
                    )

                  ],
                ),
                SizedBox(height: 70,),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectVehiclePageThree()));
                    }, style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                  ),
                    child: Text('Continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }

}