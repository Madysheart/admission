import 'package:admission/Colors/Colors.dart';
import 'package:flutter/material.dart';

class Placement extends StatefulWidget {
  const Placement({super.key});

  @override
  State<Placement> createState() => _PlacementState();
}

class _PlacementState extends State<Placement> {
  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Placements",style: TextStyle(color: Colors.white,fontSize: 18),),
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
                                Text("Infosys",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                Text("amazon",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                Text("Aegiix",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                Text("Personiv",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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
                                                          height: screenHeight*0.23,
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
                                                        
                                                                                                  ),child:Column(
                                                                                                    children: [
                                                                                                      Image(image: AssetImage('assets/men2.png')),
                                                                                                      SizedBox(
                                                                                                        height: 2,
                                                                                                      ),
                                                                                                      Text('Sadha'),
                                                                                                      Text('Mca')
                                                                                                    ],
                                                                                                  )
                                                                                                  
                                                        ),
                                                        
                                                      ],
                                                                                                   ),
                                                   ),
                                                   onTap: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Computer()));
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