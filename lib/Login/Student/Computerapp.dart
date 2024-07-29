import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Student/Appform.dart';
import 'package:flutter/material.dart';

class Computer extends StatefulWidget {
  const Computer({super.key});

  @override
  State<Computer> createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Computer Application",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
     
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: screenHeight*0.3,
                                                           
                                                          
                                                                             decoration: BoxDecoration(
                                                                                                      color: Colors.pinkAccent,
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(10),
                                                            topRight: Radius.circular(10),
                                                            bottomLeft: Radius.circular(10),
                                                            bottomRight: Radius.circular(10)),
                                                          //                                             boxShadow: [
                                                          // BoxShadow(
                                                          //   color: Colors.grey.withOpacity(0.3),
                                                          //   spreadRadius: 3,
                                                          //   blurRadius: 3,
                                                          //   offset: Offset(0,
                                                          //       1), // changes position of shadow
                                                          // ),
                                                          
                                                          //                                             ],
                                                          
                                                                                                    ),child: Image(image: AssetImage("assets/bca.jpg"))
                ),
              ),
              Text("Bachelor Of Computer Applications",style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Carreer Objectives:",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

               SizedBox(
                height: 10,
              ),
              Container(
                  height: screenHeight*0.3,
                  width: screenWidth*0.9,
                                                           
                                                          
                                                                             decoration: BoxDecoration(
                                                                                                     
                                                                                                      border: Border.all(
                                                                                                        color: Colors.grey
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(10),
                                                            topRight: Radius.circular(10),
                                                            bottomLeft: Radius.circular(10),
                                                            bottomRight: Radius.circular(10)),
                                                          //                                             boxShadow: [
                                                          // BoxShadow(
                                                          //   color: Colors.grey.withOpacity(0.3),
                                                          //   spreadRadius: 3,
                                                          //   blurRadius: 3,
                                                          //   offset: Offset(0,
                                                          //       1), // changes position of shadow
                                                          // ),
                                                          
                                                          //                                             ],
                                                          
                                                                                                    ),child: Column(
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsets.all(8.0),
                                                                                                          child: Text("A Bachelor of Computer Application degree is the core of Computer Science in today's world. BCA is a three-year degree program. This degree is for those who want to study computer science, software engineering, information technology, information security, and networking technology.",
                                                                                                          style: TextStyle(fontSize: 15,),),
                                                                                                        )
                                                                                                      ],
                                                                                                    ),
                ),
                SizedBox(
                  height: 10,
                ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Duration :",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("3 Years",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Semesters :",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("6",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Total Fee :",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2,00,000",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: appbar_color
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppForm()));
                }, child: Text('Apply Now'))

            ],
          ),
        ),
      ),
    ));
  }
}