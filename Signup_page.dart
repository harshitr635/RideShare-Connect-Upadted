import 'package:flutter/material.dart';
import 'package:rideshare_connect/Login_page.dart';
import 'package:rideshare_connect/home_page.dart';

class SignupPage extends StatelessWidget{
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //When we are using default column all the materials will automatically aligns in the center
          children: [
            Container(
              height: 255,
              width: 500,
              child: Center(
                child: Image.asset(
                  'Assets/Images/pngicon.png',
                  width: 225,
                  height: 250,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text('    How Do you want to Signup?',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 35),
            //Gmail Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Icon(Icons.email, size: 50),
                  SizedBox(width: 30),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Signup with gmail"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[50],
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            //Facebook Button
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Icon(Icons.facebook, size: 50),
                  SizedBox(width: 30,),
                  Expanded(child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Signup with facebook"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[50],
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
            //Divider Line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
              child: Divider(color: Colors.purpleAccent, thickness: 1),
            ),
            //Not a member
            Text(
              "    Already a member?",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[50],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                )
            ),
            SizedBox(height: 8),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
                child: Text("Skip for now"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[50],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}
