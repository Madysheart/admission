import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:admission/Login/Staff/signin.dart';
import 'package:admission/Login/Student/Slogin.dart';
import 'package:flutter/material.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Container(
        height: screenHeight*0.98,
         decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/getst.jpg',),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 450,
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:110.0,right: 60),
              child: Text("Get Started With",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:70.0,top: 20,right: 70),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: appbar_color
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SSlogin()));

                  }, child: Text("Student")),
                  SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: appbar_color
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  }, child:Text('Staff'))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}