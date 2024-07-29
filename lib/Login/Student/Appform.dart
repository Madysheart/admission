import 'dart:io';

import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Student/resp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class AppForm extends StatefulWidget {
  const AppForm({super.key});

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  String Typevalue = "Select";
  var Type = [
    "Select",
    "BCA",
    "Bcom IT",
  ];

   final _formKey = GlobalKey<FormState>();



  File? _pickedImage;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _pickedImage = File(pickedImage.path);
      } else {
        // User canceled the picker
        _pickedImage = null;
      }
    });
  }







  Future<void> _showImageSourceDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Take a picture"),
                  onTap: () {
                    _pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Choose from gallery"),
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }


 File? _SSlcImage;

  Future<void> _SSlcimages(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _SSlcImage = File(pickedImage.path);
      } else {
        // User canceled the picker
        _SSlcImage = null;
      }
    });
  }

 Future<void> _SSlcDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Take a picture"),
                  onTap: () {
                    _SSlcimages(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Choose from gallery"),
                  onTap: () {
                    _SSlcimages(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  File? _HSlcImage;

  Future<void> _HSlcimages(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _HSlcImage = File(pickedImage.path);
      } else {
        // User canceled the picker
        _HSlcImage = null;
      }
    });
  }

 Future<void> _HSlcDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Take a picture"),
                  onTap: () {
                    _HSlcimages(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Choose from gallery"),
                  onTap: () {
                    _HSlcimages(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }


   TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
   TextEditingController FathersnameController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
   TextEditingController fathermobController = TextEditingController();
  TextEditingController stmobController = TextEditingController();
   TextEditingController SSlcController = TextEditingController();
  TextEditingController HslcController = TextEditingController();





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
            'Application Form',
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          backgroundColor: appbar_color,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
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
                                
                          //       inputFormatters: [
                          //   LengthLimitingTextInputFormatter(10),
                          //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                          // ],
                                controller: firstnameController,
                                decoration: const InputDecoration(
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
                              //       keyboardType: TextInputType.phone,
                              //       inputFormatters: [
                              //   LengthLimitingTextInputFormatter(10),
                              //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              // ],
                                    controller: lastnameController,
                                    decoration: const InputDecoration(
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
                                                        ),Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
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
                        controller: stmobController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
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
                       const SizedBox(
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
                              //       keyboardType: TextInputType.phone,
                              //       inputFormatters: [
                              //   LengthLimitingTextInputFormatter(10),
                              //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              // ],
                                    controller: FathersnameController,
                                    decoration: const InputDecoration(
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
                              //       keyboardType: TextInputType.phone,
                              //       inputFormatters: [
                              //   LengthLimitingTextInputFormatter(10),
                              //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                              // ],
                                    controller: occupationController,
                                    decoration: const InputDecoration(
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
                            padding: EdgeInsets.only(left: 8.0),
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
                        controller: fathermobController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
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
                       const SizedBox(
                                                          height: 25,
                                                        ),
                                                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
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
                                           Container(
                                              width: 390,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: appbar_color),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0, right: 12.0),
                                                child: DropdownButtonHideUnderline(
                                                  child: DropdownButton(
                                                    // Initial Value
                                                    value: Typevalue,
                
                                                    // Down Arrow Icon
                                                    icon: const Icon(
                                                        Icons.keyboard_arrow_down),
                
                                                    // Array list of items
                                                    items:
                                                        Type.map((String items) {
                                                      return DropdownMenuItem(
                                                        value: items,
                                                        child: Text(items),
                                                      );
                                                    }).toList(),
                                                    // After selecting the desired option,it will
                                                    // change button value to selected value
                                                    onChanged: (String? newValue) {
                                                      setState(() {
                                                      Typevalue = newValue! ;
              
                                                      });
                                                    },
                                                  ),
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
              
                          _pickedImage==null?
                          
                            InkWell(
                              onTap: () {
                                _showImageSourceDialog(context);
              
                              },
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
                                                                                                      child: Image(image: AssetImage('assets/sc1.jpg'))
                                                                                                      
                                                            ),
                            )
              
              
                            :
              
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
              
                                                              image: DecorationImage(
                          image: FileImage(_pickedImage!),
                          fit: BoxFit.cover,
                        ),
              
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
              
              
                            )
                          
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
                          if (v == "" || v == null || v.length != 4) {
                            return "Please enter SSLC Total Marks";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        controller: SSlcController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
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
                          
                           _HSlcImage==null?
                          
                            InkWell(
                              onTap: () {
                                _HSlcDialog(context);
              
                              },
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
                                                                                                      child: Image(image: AssetImage('assets/sc1.jpg'))
                                                                                                      
                                                            ),
                            )
              
              
                            :
              
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
              
                                                              image: DecorationImage(
                          image: FileImage(_HSlcImage!),
                          fit: BoxFit.cover,
                        ),
              
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
              
              
                            )
                          
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
                          if (v == "" || v == null || v.length != 4) {
                            return "Please enter HSLC Total Marks";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        controller: HslcController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]*')),
                        ],
                        decoration: const InputDecoration(
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
                          
                            _SSlcImage==null?
                          
                            InkWell(
                              onTap: () {
                                _SSlcDialog(context);
              
                              },
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
                                                                                                      child: Image(image: AssetImage('assets/sc1.jpg'))
                                                                                                      
                                                            ),
                            )
              
              
                            :
              
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
              
                                                              image: DecorationImage(
                          image: FileImage(_SSlcImage!),
                          fit: BoxFit.cover,
                        ),
              
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
              
              
                            )
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
                          TextButton(onPressed: (){}, child: Text("Pay Now",style: TextStyle(color: appbar_color),))
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
                    if (_formKey.currentState!.validate()) {
                    // Move to the sign-in navigation
                    Fluttertoast.showToast(
                                                      msg: 'Applied Successfully',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 3,
                                                      backgroundColor: Colors.green,
                                                      textColor: Colors.white);


                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => response(),));
                  } else {
                    // Show a toast message if form validation fails
                    Fluttertoast.showToast(
                      msg: 'Please fill in all required fields',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 3,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                    );
                  }
                  }, child: Text('Apply'))
              
              
                    
                ],
              ),
            ),
          ),
        ),
      )
      ),
    );
  }
}