import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Student/Computerapp.dart';
import 'package:flutter/material.dart';

class Masters extends StatefulWidget {
  const Masters({super.key});

  @override
  State<Masters> createState() => _MastersState();
}

class _MastersState extends State<Masters> {
  @override
  Widget build(BuildContext context) {
         double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Masters",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
     
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Computer Science",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                children: [
                   Padding(
                                                 padding: const EdgeInsets.only(left:18.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                                                                    padding: const EdgeInsets.only(top:48.0,left: 18,),
                                                                                                    child: Text("Computer Application",maxLines: null,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                              
                                               Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child:  Padding(
                                                                                                    padding: const EdgeInsets.only(top:48.0,left: 18,),
                                                                                                    child: Text("Computer Science",maxLines: null,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                                                                    padding: const EdgeInsets.only(top:48.0,left: 18,),
                                                                                                    child: Text("Cyber Security",maxLines: null,),
                                                                                                  ),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                ],
              ),
              
              
              ),
               Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Information Technology",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                children: [
                   Padding(
                                                 padding: const EdgeInsets.only(left:18.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child:Center(child: Text("Bsc IT"))
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                              
                                               Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child:Center(child: Text("Bcom IT"))
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("B.IT")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                ],
              ),
              ),
               Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Buisness and Accounting",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                children: [
                   Padding(
                                                 padding: const EdgeInsets.only(left:18.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("PA")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                              
                                               Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("CA")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("Bcom")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                ],
              ),
              ),
               Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text("Literature",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                children: [
                   Padding(
                                                 padding: const EdgeInsets.only(left:18.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("Tamil")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                              
                                               Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("English")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                                                Padding(
                                                 padding: const EdgeInsets.only(left:30.0,top: 15,bottom: 8),
                                                 child: InkWell(
                                                   child: Container(
                                                     child: Column(
                                                      children: [
                                                        Container(
                                                          height: screenHeight*0.2,
                                                          width: screenWidth*0.3,
                                                        
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
                                                        
                                                                                                  ),child: Center(child: Text("Maths")),
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
                                                   },
                                                 ),
                                               ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),

    ));
  }
}