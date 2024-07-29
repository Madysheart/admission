import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:admission/Login/Student/Achieve.dart';
import 'package:admission/Login/Student/Applications.dart';
import 'package:admission/Login/Student/Bachelors.dart';
import 'package:admission/Login/Student/Masters.dart';
import 'package:admission/Login/Student/Profile.dart';
import 'package:admission/Login/Student/Slogin.dart';
import 'package:admission/Login/Student/doct.dart';
import 'package:admission/Login/Student/help.dart';
import 'package:admission/Login/Student/placemnet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Stdashboard extends StatefulWidget {
  const Stdashboard({super.key});

  @override
  State<Stdashboard> createState() => _StdashboardState();
}

class _StdashboardState extends State<Stdashboard> {
   int _currentIndex = 0;

  var bannerimg = [
    'assets/ban1.jpg',
    'assets/ban2.jpg',
   
  ];
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
       drawer: Drawer(
            backgroundColor: appbar_color,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Stprofile()));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Applications',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => applications()));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Terms & Condition',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // AppConfig.pref.clear();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>Utility.CustomDialog()));
                    
                        showDialog(context: context,
                         builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Confirmation'),
                  content: Text('Are you sure you want to proceed?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Close the dialog and perform some action
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SSlogin()));
                        // Add your 'Yes' action here
                      },
                      child: Text('Yes',style: TextStyle(color: appbar_color),),
                    ),TextButton(
                      onPressed: () {
                        // Close the dialog
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Stdashboard()));
                        // Add your 'No' action here
                      },
                      child: Text('No'),
                    ),
                  ],
                          );
                         });
                  },
                ),
                Divider(),
              ],
            )),
        appBar: AppBar(
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ))),
          title: Text(
            'Welcome',
            style: TextStyle(color: Colors.white),
          ),
        
          backgroundColor:appbar_color,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                          itemCount:2,
                          itemBuilder: (context, index, realIdx) {
                            var data= bannerimg[index];
                            return GestureDetector(
                              child: Center(
                                child: Image(
                                  height: screenHeight * 0.3,
                                  image:
                                     AssetImage(data),
                                  fit: BoxFit.fill,
                                ),
                                // fit: BoxFit.cover, width: 1000)
                              ),
                            );
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                           
                          )),
                          SizedBox(
                            height: 10,
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Courses",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),

                           Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: screenHeight*0.17,
                   decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                              
                                            ],
                                          ),child: Row(
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(left:23.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/bachelor.png'),fit: BoxFit.cover,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left:5.0,top: 8),
                                                          child: Text("Bachelors",style: TextStyle(fontSize: 12),),
                                                        )
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bachelors()));
                                                   },
                                                 ),
                                               ),
                                              SizedBox(
                                                width: 21,
                                              ),
                                               InkWell(
                                                 child: Container(
                                                   child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                        child: Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/masters.png'),fit: BoxFit.cover,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:12.0),
                                                        child: Text("Masters",style: TextStyle(fontSize: 12),),
                                                      )
                                                    ],
                                                                                                 ),
                                                 ),
                                                 onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Masters()));
                                                 },
                                               ),
                                              SizedBox(
                                                width: 22,
                                              ),
                                                InkWell(
                                                 child: Container(
                                                   child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                        child: Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/doc.png'),fit: BoxFit.contain,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:12.0),
                                                        child: Text("Doctorate",style: TextStyle(fontSize: 12),),
                                                      )
                                                    ],
                                                                                                 ),
                                                 ),
                                                  onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>doct()));
                                                 },
                                               ),
                                            ],
                                          )
                  
                ),
              ),
              Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Explore Us",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: screenHeight*0.17,
                   decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3),
                                                spreadRadius: 3,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    1), // changes position of shadow
                                              ),
                                              
                                            ],
                                          ),child: Row(
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/ach.png'),fit: BoxFit.cover,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left:5.0,top: 8),
                                                          child: Text("Achievements",style: TextStyle(fontSize: 12),),
                                                        )
                                                      ],
                                                                                                   ),
                                                   ),
                                                    onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>achievement()));
                                                 },
                                                 ),
                                               ),
                                              SizedBox(
                                                width: 21,
                                              ),
                                               InkWell(
                                                 child: Container(
                                                   child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                        child: Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/place.png'),fit: BoxFit.cover,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:12.0),
                                                        child: Text("Placements",style: TextStyle(fontSize: 12),),
                                                      )
                                                    ],
                                                                                                 ),
                                                 ),
                                                  onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Placement()));
                                                 },
                                               ),
                                              SizedBox(
                                                width: 22,
                                              ),
                                                InkWell(
                                                 child: Container(
                                                   child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                        child: Container(
                                                          height: screenHeight*0.1,
                                                          width: screenWidth*0.2,
                                                        
                                                                           decoration: BoxDecoration(
                                                                                                    color: Colors.white,
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
                                                        
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsets.all(10.0),
                                                                                                    child: Image(image: AssetImage('assets/Help.png'),fit: BoxFit.cover,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left:12.0),
                                                        child: Text("Help",style: TextStyle(fontSize: 12),),
                                                      )
                                                    ],
                                                                                                 ),
                                                 ),
                                                  onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));
                                                 },
                                               ),
                                            ],
                                          )
                  
                ),
              ),

            ]
          )
        )
    ));
                    }
                  }
              