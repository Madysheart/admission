import 'package:admission/Colors/Colors.dart';
import 'package:flutter/material.dart';

class achievement extends StatefulWidget {
  const achievement({super.key});

  @override
  State<achievement> createState() => _achievementState();
}

class _achievementState extends State<achievement> {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Achievements",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
      
      
      ),
      body:
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder:  (BuildContext context, int index) {
                                // var data = datalist[index];
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: InkWell(
                                    child: Container(
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
            
                                      // height: screenHeight*0.2,
                                      width: screenWidth * 0.8,
                                      // color: Colors.red,
            
                                      child: Image(image: AssetImage("assets/ache.jpg"))
            
                                      // color: Colors.amber,
                                    ),
                                    onTap: () {
                                      // AppConfig.pref.setString("indcustid",
                                      //     data['account_no'].toString());
                                      // AppConfig.pref.setString(
                                      //     "loanid", data['loan_id'].toString());
            
                                      // AppConfig.pref
                                      //     .setString("detail_status", 'followup');
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             Custdetails()));
                                    },
                                  ),
                                );
                              }),
          )
    ));
  }
}