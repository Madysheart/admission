import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Student/stdash.dart';
import 'package:flutter/material.dart';

class response extends StatefulWidget {
  const response({super.key});

  @override
  State<response> createState() => _responseState();
}

class _responseState extends State<response> {
  @override
  Widget build(BuildContext context) {
        double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Application Form",style: TextStyle(color: Colors.white,fontSize: 18),),
        backgroundColor: appbar_color,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 20,bottom: 12.0),
                child: Container(
                height: screenHeight*0.27,
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
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Container(
                                                  height: 80,
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(image: AssetImage("assets/tick.png"))
                                                 
                                                  ),
                                                ),
                                                
                                              ),

                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text("Your have Applied Successfully",style: TextStyle(fontSize: 22),),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text("Any need Connect with Help Desk")
                                           
                                          ],
                                        ),
                ),
              ),
            

              SizedBox(
                height: 20
              ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: appbar_color
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Stdashboard()));
              }, child: Text('Done'))
            ],
          ),
        ),
      ),
    ));
  }
}