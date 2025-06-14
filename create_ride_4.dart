import 'package:flutter/material.dart';
import 'package:rideshare_connect/home_page.dart';

class SelectVehiclePageFour extends StatelessWidget{
  const SelectVehiclePageFour({Key? key}) : super(key: key);

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
                  const SizedBox(height: 40),
                  const SizedBox(height: 40),
                  const SizedBox(height: 40),
                  Center(child: Container(
                      height: 100,
                      width: 200,
                      child:
                  Icon(Icons.check, size: 100,))),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Your ride has been Succesfully created',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 90,),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      }, style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red[300],
                      minimumSize: Size(150, 50),
                    ),
                      child: Text('Home', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }

}