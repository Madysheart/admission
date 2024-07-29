import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/All/all.dart';
import 'package:admission/Login/Staff/Follow.dart';
import 'package:admission/Login/Staff/History.dart';
import 'package:admission/Login/Staff/NotSub/docnot.dart';
import 'package:admission/Login/Staff/forgot.dart';
import 'package:admission/Login/Staff/intrested/intrest.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:admission/Login/Staff/not%20intrested/notintrest.dart';
import 'package:admission/Login/Staff/not%20paid/notpaid.dart';
import 'package:admission/Login/Staff/ogSub/orgdoc.dart';
import 'package:admission/Login/Staff/paid/paid.dart';
import 'package:admission/Login/Staff/partial/Partial.dart';
import 'package:admission/Login/Staff/pass.dart';
import 'package:admission/Login/Staff/profile.dart';
import 'package:admission/Login/Staff/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Sdashboard extends StatefulWidget {
  const Sdashboard({super.key});

  @override
  State<Sdashboard> createState() => _SdashboardState();
}

class _SdashboardState extends State<Sdashboard> {

  var _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: appbar_color,
       
        activeColor: Colors.white,

        tabs: [
        GButton(icon: Icons.home,
        text: 'Home',),
          GButton(icon: Icons.person,
          text: 'Profile',),
            GButton(icon: Icons.phone_callback,
            text: 'Follows',),
              GButton(icon: Icons.timer,
              text: 'History',)
      ],
      selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });

                _selectedIndex==0?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sdashboard() )):


                _selectedIndex==1?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sprofile() )):

                 _selectedIndex==2?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Follows() )):

                 
                Navigator.push(context, MaterialPageRoute(builder: (context)=>History() ));

              },

      ),
      
      
      
      body: Container(
        height: screenHeight*0.98,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/lg1.jpg',),fit: BoxFit.fill)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
             
              Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: Row(
                  
                  children: [
                     Text("Hey There !!"),
                     SizedBox(
                      width: screenWidth*0.45,
                     ),
                    Icon(Icons.logout,color: Colors.white,),
                    TextButton(onPressed: (){
                      
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
                        MaterialPageRoute(builder: (context) => LoginPage()));
                        // Add your 'Yes' action here
                      },
                      child: Text('Yes',style: TextStyle(color: appbar_color),),
                    ),TextButton(
                      onPressed: () {
                        // Close the dialog
                         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sdashboard()));
                        // Add your 'No' action here
                      },
                      child: Text('No'),
                    ),
                  ],
                          );
                         });

                    }, child: Text("Logout",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
             

               Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                // height: screenHeight*0.28,
                // width: screenWidth*0.8,
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
                                        ),
                                        child: Column(
                                          children: [

                                          Row(
                                            children: [
                                              
                                              Padding(
                                                padding: const EdgeInsets.only(left:16.0,top: 30),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage("assets/men2.png"),
                                                  radius: 60,
                                                ),
                                                
                                                
                                              ),
                                              
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:40.0,bottom: 5.0),
                                                    child: Text('Sangili.S',style: TextStyle(
                                                      fontSize: 22
                                                    ),),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:40.0,bottom: 5.0),
                                                    child: Text("IUC005",style: TextStyle(
                                                      fontSize: 16
                                                    ),),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:40.0,bottom: 5.0),
                                                    child: Text('MCA'),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:40.0,bottom: 5.0),
                                                    child: Text('(Asst. Proff)'),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                           Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 40),
                                                child:Row(
                                                  children: [
                                                    TextButton(onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sprofile()));
                                                    }, child: Text("Edit Profile",style: TextStyle(color: appbar_color),)),
                                                    
                                                  ],
                                                )
                                              )
                                            ],
                                          )
                                         
                                          
                                           
                                          ],
                                        ),

                                        
                                        
                ),
              ),
              Row(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Explore",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  
                ],
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
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:20,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/all.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>allist()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:25.0),
                                                    child: Text("Contacts",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 24,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/int.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Intrested()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:12.0),
                                                    child: Text("Intrested",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 23,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/notin.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>notintrest()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                   Padding(
                                                    padding: const EdgeInsets.only(left:12.0),
                                                    child: Text("Not Intrested",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              
                                            ],
                                          )
                  
                ),
              ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ],
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
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:20,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/paid.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Paid()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:20.0),
                                                    child: Text("Paid",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 23,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/partial.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Partial()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:12.0),
                                                    child: Text("Partially Paid",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 24,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/np.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>notpaid()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                   Padding(
                                                    padding: const EdgeInsets.only(left:12.0),
                                                    child: Text("Not Paid",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              
                                            ],
                                          )
                  
                ),
              ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Documents",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ],
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
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/dsub.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>orgdoc()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:17.0),
                                                    child: Text("OG Submitted",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/dnsub.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>docnot()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:12.0),
                                                    child: Text("Not Submitted",style: TextStyle(fontSize: 12),),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                               Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15.0,top: 15,bottom: 8),
                                                    child: InkWell(
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
                                                                                                      padding: const EdgeInsets.all(12.0),
                                                                                                      child: Image(image: AssetImage('assets/comsoon.png'),fit: BoxFit.cover,),
                                                                                                    ),
                                                      ),
                                                        onTap: () {
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>allist()));
                                                      },
                                                    ),
                                                    
                                                  ),
                                                   Padding(
                                                    padding: const EdgeInsets.only(left:18.0),
                                                    child: Text("",style: TextStyle(fontSize: 12),),
                                                                                                     )
                                                ],
                                              ),
                                              
                                            ],
                                          )
                  
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}