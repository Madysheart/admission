import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/All/form.dart';
import 'package:admission/Login/Staff/paid/paidform.dart';
import 'package:flutter/material.dart';

class Paid extends StatefulWidget {
  const Paid({super.key});

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    
    return SafeArea(child: Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Paid",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
       actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
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
            
                                      child: Row(children: [
                                        // Padding(
                                        //   padding:
                                        //       const EdgeInsets
                                        //           .all(8.0),
                                        //   child: Container(
                                        //     height:
                                        //         screenHeight *
                                        //             0.1,
                                        //     width: screenWidth *
                                        //         0.18,
            
                                        //     decoration:
                                        //         BoxDecoration(
                                        //             borderRadius: BorderRadius.only(
                                        //                 topLeft:
                                        //                     Radius.circular(
                                        //                         10),
                                        //                 topRight:
                                        //                     Radius.circular(
                                        //                         10),
                                        //                 bottomLeft:
                                        //                     Radius.circular(
                                        //                         10),
                                        //                 bottomRight:
                                        //                     Radius.circular(
                                        //                         10)),
                                        //             image: data["party_image"] ==
                                        //                     null
                                        //                 ? DecorationImage(
                                        //                     image:
                                        //                         AssetImage("assets/pf.jpg"),
                                        //                   )
                                        //                 : DecorationImage(
                                        //                     image:
                                        //                         NetworkImage(data["party_image"]))),
                                        //     // color: Colors.red,
                                        //   ),
                                        // ),
                                        // SizedBox(
                                        //   width: screenWidth *
                                        //       0.06,
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15.0),
                                          child: InkWell(
                                            child: Container(
                                              width: screenWidth * 0.8,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Name",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 52,
                                                      ),
                                                      Text(
                                                        'Abdul Azeez',
                                                        style:
                                                            TextStyle(fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Id ",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 73,
                                                      ),
                                                      Text(
                                                        '002',
                                                        style:
                                                            TextStyle(fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Status",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 48,
                                                      ),
                                                      Text(
                                                        'Paid',
                                                        style:
                                                            TextStyle(fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Contact No",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 17,
                                                      ),
                                                      Text(
                                                        '9003390568',
                                                        style:
                                                            TextStyle(fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Call Status",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 19,
                                                      ),
                                                      Text(
                                                        'Connected',
                                                        style: TextStyle(
                                                            color: Colors.green),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Dept",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 59,
                                                      ),
                                                      Text(
                                                        'MCA',
                                                        style:
                                                            TextStyle(fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            onTap: () {
                                              
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>paidform()));
                                            },
                                          ),
                                        ),
            
                                        // Container(
                                        //   width:
                                        //       screenWidth * 0.1,
                                        //   child: IconButton(
                                        //       onPressed:
                                        //           () async {
                                        //         String
                                        //             telephoneUrl =
                                        //             "tel:${data["phone_number"]}";
                                        //         if (await launch(
                                        //             telephoneUrl)) {
                                        //           await launch(
                                        //               telephoneUrl);
                                        //         } else {
                                        //           throw "Error occured trying to call that number.";
                                        //         }
                                        //       },
                                        //       icon: Icon(
                                        //           Icons.phone)),
                                        // ),
                                      ]),
            
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