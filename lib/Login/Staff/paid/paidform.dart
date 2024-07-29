import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/Sdash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class paidform extends StatefulWidget {
  const paidform({super.key});

  @override
  State<paidform> createState() => _paidformState();
}

class _paidformState extends State<paidform> {
     String Typevalue = "Select";
  var Type = [
    "Select",
    "BCA",
    "Bcom IT",
  ];
   String dropdownvalue = "Select";
  var content = ["Select", "Connected", "Not Connected","Received calls"];

  var dropvalue = '0';
  String Callvalue = "Select";
  var Call = ['Select', "Call", "whatsapp"];

  String Contactvalue = "Select";
  var Contact = [
    "Select",
    "Student",
    "Parent",
  ];

  String statusvalue = "Select";
  var Status = [
    "Select",
    "Intrested",
    "Not Intrested",
    "Pending",
    "Paid",
    "Not Paid",
    "Partially Paid",
    "Document Submitted",
    "Document Not Submitted",
    "Enrolled"
  ];
  String Call1value = "Select";
  var Call1 = [
    "Select",
    "-NA-",
    "-NR-",
    "S_O",
    "Call back",
  ];
  void startWhatsAppChat(String phoneNumber) async {
    String url = 'https://wa.me/$phoneNumber';

    if (await launch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

TextEditingController _followupController = TextEditingController();

  var showvalue = '0';
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: const Text(
            'Student details',
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          backgroundColor: appbar_color,
      ),
      body: PageView(
        children: [
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    
                     Row(
                       children: [
                         Text(
                           "First Name*",
                           style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                         ),
                       ],
                     ),
                    const SizedBox(
                      height: 10,
                     ),
                                        TextFormField(
                                validator: (v) {
                                  if (v == "" || v == null ) {
                                    return "Please enter First Name";
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.phone,
                                
                                inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                          ],
                                // controller: mobile,
                                decoration: const InputDecoration(
                                  hintText: 'Abdul',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 3),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                  ),
                                ),
                                                    ),
                                                    const SizedBox(
                                                      height: 25,
                                                    ),
                                                    Row(
                           children: [
                             Text(
                               "Last Name*",
                               style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                        const SizedBox(
                          height: 10,
                         ),
                                            TextFormField(
                                              
                                    validator: (v) {
                                      if (v == "" || v == null ) {
                                        return "Please enter Last Name";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.phone,
                                    
                                    inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              ],
                                    // controller: mobile,
                                    //  enabled: false,
                                    decoration: const InputDecoration(
                                      hintText: 'Azeez',
                                      
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Colors.red, width: 3),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                    ),
                                                        ),
                                                        const SizedBox(
                                                          height: 25,
                                                        ),
                                                         Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Mobile Number*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (v) {
                          if (v == "" || v == null || v.length != 10) {
                            return "Please enter Mobile no";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        // controller: Mobilenumbercontroller,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
                           hintText: '9003390548',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                        Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Call',
                                  style: TextStyle(
                                    fontSize: 15
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    width: screenWidth * 0.18,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                appbar_color),
                                        onPressed: () async {

                //   //                                         setState(() {
                //   // currentTime = _getCurrentTime();
                // });


                                          String telephoneUrl =
                                              "tel:9003390548";
                                          if (await launch(telephoneUrl)) {
                                            await launch(telephoneUrl);
                                          } else {
                                            throw "Error occured trying to call that number.";
                                          }
                      
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Custdetails()));
                                        },
                                        child: const Icon(
                                          Icons.call,
                                          color: Colors.white,
                                          size: 18,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Whatsapp',
                                  style: TextStyle(
                                    fontSize: 15
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: Container(
                                    width: screenWidth * 0.18,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        onPressed: () {
                                          String phoneNumber =
                                              '9003390548'; // Replace with the desired phone number
                                          startWhatsAppChat(phoneNumber);
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Custmdetails3()));
                                        },
                                        child: const Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                          size: 18,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                                                        Row(
                           children: [
                             Text(
                               "Fathers Name/Guardian Name*",
                               style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                        const SizedBox(
                          height: 10,
                         ),
                                            TextFormField(
                                    validator: (v) {
                                      if (v == "" || v == null ) {
                                        return "Please enter Fathername";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              ],
                                    // controller: mobile,
                                    decoration: const InputDecoration(
                                       hintText: 'Apsal',
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Colors.red, width: 3),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                    ),
                                                        ),
                                                        const SizedBox(
                                                          height: 25,
                                                        ),
                                                        Row(
                           children: [
                             Text(
                               "Fathers Occupation*",
                               style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                        const SizedBox(
                          height: 10,
                         ),
                                            TextFormField(
                                    validator: (v) {
                                      if (v == "" || v == null ) {
                                        return "Please enter Fathers Occupation";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              ],
                                    // controller: mobile,
                                    decoration: const InputDecoration(
                                       hintText: 'hardware',
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color: Colors.red, width: 3),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        borderSide:
                                            BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                                      ),
                                    ),
                                                        ),
                                                        const SizedBox(
                                                          height: 25,
                                                        ),
                                                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Mobile Number*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (v) {
                          if (v == "" || v == null || v.length != 10) {
                            return "Please enter Mobile no";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        // controller: Mobilenumbercontroller,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
                           hintText: '9003390548',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                        Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Call',
                                  style: TextStyle(
                                    fontSize: 15
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    width: screenWidth * 0.18,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                appbar_color),
                                        onPressed: () async {

                //   //                                         setState(() {
                //   // currentTime = _getCurrentTime();
                // });


                                          String telephoneUrl =
                                              "tel:9003390548";
                                          if (await launch(telephoneUrl)) {
                                            await launch(telephoneUrl);
                                          } else {
                                            throw "Error occured trying to call that number.";
                                          }
                      
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Custdetails()));
                                        },
                                        child: const Icon(
                                          Icons.call,
                                          color: Colors.white,
                                          size: 18,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Whatsapp',
                                  style: TextStyle(
                                    fontSize: 15
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: Container(
                                    width: screenWidth * 0.18,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        onPressed: () {
                                          String phoneNumber =
                                              '9003390548'; // Replace with the desired phone number
                                          startWhatsAppChat(phoneNumber);
                                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Custmdetails3()));
                                        },
                                        child: const Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                          size: 18,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                       const SizedBox(
                                                          height: 25,
                                                        ),
                                                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              "Course*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (v) {
                          if (v == "" || v == null || v.length != 10) {
                            return "Please enter Course";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        // controller: Mobilenumbercontroller,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
                           hintText: 'Master of Computer Application',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                                          
                                            SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Passport Photo*",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 53,
                          ),
                          
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
                                                          
                                                                                                    ),child: Image(image: AssetImage('assets/men2.png'))
                                                                                                    
                                                          ),
                          
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "SSLC Total Marks *",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (v) {
                          if (v == "" || v == null || v.length != 10) {
                            return "Please enter SSLC Total Marks";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        // controller: Mobilenumbercontroller,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
                          hintText: '450',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "SSLC Marksheet*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          
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
                                                          
                                                                                                    ),child: Image(image: AssetImage('assets/ban1.jpg'))
                                                                                                    
                                                          ),
                          
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "HSLC Total Marks*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (v) {
                          if (v == "" || v == null || v.length != 10) {
                            return "Please enter HSLC Total Marks";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        // controller: Mobilenumbercontroller,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
                          hintText: '800',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "12 th Marksheet*",
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          
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
                                                          
                                                                                                    ),child: Image(image: AssetImage('assets/ban2.jpg'))
                                                                                                    
                                                          ),
                          
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text("Application Fee : 250"),
                          SizedBox(
                            width: 30,
                          ),
                          TextButton(onPressed: (){}, child: Text("Paid",style: TextStyle(color: Colors.green),))
                        ],
                      ),
                        SizedBox(
                  height: 20,
                ),
                Row(
                        children: [
                          Text("Student Current Status :"),
                          SizedBox(
                            width: 30,
                          ),
                          TextButton(onPressed: (){}, child: Text("Paid",style: TextStyle(color: Colors.green),))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    
                   
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(children: [
                   
                   Text('Updation Form',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                   ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: screenHeight * 0.65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Container(
                                    height: screenHeight * 0.06,
                                    width: screenWidth * 0.17,
                                    child: const Text(
                                      "Conn.to",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: screenWidth * 0.65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(255, 139, 137, 137)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      // Initial Value
                                      value: Contactvalue,
              
                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),
              
                                      // Array list of items
                                      items: Contact.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          Contactvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Container(
                                    height: screenHeight * 0.06,
                                    width: screenWidth * 0.17,
                                    child: const Text(
                                      "Comm.",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: screenWidth * 0.65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(255, 139, 137, 137)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      // Initial Value
                                      value: Callvalue,
              
                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),
              
                                      // Array list of items
                                      items: Call.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          Callvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Container(
                                    height: screenHeight * 0.06,
                                    width: screenWidth * 0.17,
                                    child: const Text(
                                      "Foll.on",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.65,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: TextField(
                                      
                                      // controller: _followonController,
                                      
                                      style: const TextStyle(
                                        fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold
                                        
                                      ),
                                      enabled: false,
                                      decoration: InputDecoration(
                                        hintText: '21.03.2023',
                                        border: InputBorder.none
                                      ),
                                      
                                      
                                      
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
              
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Container(
                                    height: screenHeight * 0.06,
                                    width: screenWidth * 0.17,
                                    child: const Text(
                                      "Com.Sta",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: screenWidth * 0.65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(255, 139, 137, 137)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      // Initial Value
                                      value: dropdownvalue,
              
                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),
              
                                      // Array list of items
                                      items: content.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                          newValue == 'Connected'
                                              ? dropvalue = '1'
                                              : '0';
                                          newValue == 'Not Connected'
                                              ? dropvalue = '2'
                                              : '0';
                                          newValue == 'Select'
                                              ? dropvalue = '0'
                                              : '1';
                                              newValue == 'Received calls'
                                              ? dropvalue = '1'
                                              :'0';
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              //  Container(
                              //   height: screenHeight*0.05,
                              //                       width: screenWidth*0.5,
                              //                       decoration: BoxDecoration(
                              //                     border: Border.all(color: Colors.grey),
                              //                     borderRadius: BorderRadius.circular(10),
                              //                                     ),
                              //                                      child: Padding(
                              //                                        padding: const EdgeInsets.only(left: 18.0),
                              //                                        child: TextField(
                              //    style: TextStyle(
                              //      fontSize: 14,
              
                              //    ),
                              //    decoration: InputDecoration(
              
                              //      border: InputBorder.none,
                              //      hintText: 'Connected',
              
                              //      hintStyle: TextStyle(
                              //        fontWeight: FontWeight.normal,
                              //        color: Colors.green,
                              //        fontSize: 14
                              //      )
                              //    ),
                              //  ),
                              //                                      ),
                              //  )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
              
                          dropvalue == '0'
                              ? Container()
                              : dropvalue == '1'
                                  ? Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Container(
                                              height: screenHeight * 0.06,
                                              width: screenWidth * 0.17,
                                              child: const Text(
                                                "Discl.",
                                                style: TextStyle(fontSize: 16),
                                              )),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          
                                          width: screenWidth * 0.65,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 18.0,bottom: 10.0),
                                            child: TextField(
                                              maxLines: null,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                              // controller: disclaimer,
                                              decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Write something ...',
                                                  hintStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.grey,
                                                      fontSize: 14)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        )
                                       
                                      ],
                                    )
                                  : Container(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 18.0),
                                            child: Container(
                                                height: screenHeight * 0.06,
                                                width: screenWidth * 0.17,
                                                child: const Text(
                                                  "Call.St",
                                                  style: TextStyle(fontSize: 16),
                                                )),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: screenWidth * 0.65,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 139, 137, 137)),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0, right: 12.0),
                                              child: DropdownButtonHideUnderline(
                                                child: DropdownButton(
                                                  // Initial Value
                                                  value: Call1value,
              
                                                  // Down Arrow Icon
                                                  icon: const Icon(
                                                      Icons.keyboard_arrow_down),
              
                                                  // Array list of items
                                                  items:
                                                      Call1.map((String items) {
                                                    return DropdownMenuItem(
                                                      value: items,
                                                      child: Text(items),
                                                    );
                                                  }).toList(),
                                                  // After selecting the desired option,it will
                                                  // change button value to selected value
                                                  onChanged: (String? newValue) {
                                                    setState(() {
                                                      // Call1value = newValue!;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
              
                          const SizedBox(
                            height: 10,
                          ),
                                                                        Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 18.0),
                                                                              child: Container(
                                                                                height: screenHeight*0.06,
                                                                                width: screenWidth*0.21,
                                                                                child: Text("Status:",style: TextStyle(fontSize: 16),)),
                                                                            ),
                                                                          // SizedBox(
                                                                          //   width: 15,
                                                                          // ),
                                                                          Container(
                                                                            width: screenWidth*0.65,
                                                                            decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(255, 139, 137, 137)),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:12.0, right:12.0),
                            child: DropdownButtonHideUnderline(
                                 child: DropdownButton(
              
                                               // Initial Value
                                               value: statusvalue,
              
                                               // Down Arrow Icon
                                               icon: const Icon(Icons.keyboard_arrow_down),
              
                                               // Array list of items
                                               items: Status.map((String items) {
                                                 return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                                 );
                                               }).toList(),
                                               // After selecting the desired option,it will
                                               // change button value to selected value
                                               onChanged: (String? newValue) {
                                                 setState(() {
                                  statusvalue = newValue!;
              
                                  statusvalue=='Completed' ? showvalue ='1' : showvalue='0';
              
                                                 });
                                               },
                                             ),
                               ),
                          ),
                                                                          ),
                                                                          //
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height: 8,
                                                                        ),
              
                          
                          // dropvalue == '1'
                               Row(
                                
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                      child: Container(
                                          height: screenHeight * 0.06,
                                          width: screenWidth * 0.17,
                                          child: const Text(
                                            "Foll.up",
                                            style: TextStyle(fontSize: 16),
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                        height: screenHeight * 0.05,
                                        width: screenWidth * 0.65,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: TextField(
                                            controller: _followupController,
                                            style: const TextStyle(
                                              fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold
                                            ),
                                            decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                  onPressed: () {
                                                    _selectDate2();
                                                  },
                                                  icon:
                                                      const Icon(Icons.calendar_month)),
                                              border: InputBorder.none,
                                              hintText: 'Date ----/--/--',
                                            ),
                                            readOnly: true,
                                            onTap: () {
                                              _selectDate2();
                                            },
                                          ),
                                        )),
                                  ],
                                )
                              

                            
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appbar_color
                        ),
                        onPressed: (){
                          // if(_formKey.currentState!.validate()){
                          //   setState(() {
                          //     isLoading = true;
                          //   });
                          //   var data = {
                          //     "mobile":mobile.text,
                          //     "password":Password.text
                          //   };
                          //   var res = await LoginService.login(data);
                          //   print(res);
                          //   if (res["Success"]==200){
                          //      AppConfig.pref.setString("userId", res["data"]["id"].toString());
                          //      Utility.successNote("Login success");
                          //     print("success");
                          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboardpage()));
                          //   }
                          //   else{
                          //       print(res["message"] ?? "Something went wromg");
                          //       Utility.failureNote(res["message"]??"Something went wrong");
                          //   }
                          //   setState(() {
                          //     isLoading = false;
                          //   });
                          // }
                          //   else{
                          //     Utility.failureNote(
                          //           "Please enter all required Fields");
                                    
                          //   }
                          Fluttertoast.showToast(
                                                      msg: 'Updated Successfully',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 3,
                                                      backgroundColor: Colors.green,
                                                      textColor: Colors.white);


                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sdashboard(),));
                          
                          
                          
                      
                      }, child: 
                      Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                    
                  ]),
                ),
              ),
            ),
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
                                                      "Contact at",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 21,
                                                    ),
                                                    Text(
                                                      '11.30 am',
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
                                                      "Discalimer ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 13,
                                                    ),
                                                    Text(
                                                      'Student said that he will  ',maxLines: null,
                                                      style:
                                                          TextStyle(fontSize: 14),
                                                    ),
                                                    
                                                    
                                                  ],
                                                ),
                                                
                                                Padding(
                                                  padding: const EdgeInsets.only(left:85.0),
                                                  child: Text('response soon'),
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
        ],
      )
    ));
  }
   Future<void> _selectDate2() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (_picked != null) {
      setState(() {
        // Use the intl package to format the date
        String formattedDate = DateFormat('dd-MM-yyyy').format(_picked);
        _followupController.text = formattedDate;
      });
    }
  }
}