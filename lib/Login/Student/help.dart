import 'package:admission/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("Help & Support",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
      
      
      ),
       body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  const Text(
                    "Office Details",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(253, 253, 254, 255),
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
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Text(
                                "Dr. SNS Rajalakshmi College,",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Text(
                            "Opp to Bharat petroleum,",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            "Chinnavedampati",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            "Saravanampatti post,",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            "Coimabatore-637 209",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color:  Color.fromARGB(255, 17, 159, 177),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(90),
                                      topRight: Radius.circular(90),
                                      bottomLeft: Radius.circular(90),
                                      bottomRight: Radius.circular(90)),
                                ),
                                child: const Icon(
                                  Icons.mail_sharp,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              const Text("   drsnsrcas@gmail.com")
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color:  Color.fromARGB(255, 17, 159, 177),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(90),
                                      topRight: Radius.circular(90),
                                      bottomLeft: Radius.circular(90),
                                      bottomRight: Radius.circular(90)),
                                  // boxShadow: [
                                  //             BoxShadow(

                                  //               color: Colors.grey.withOpacity(0.3),
                                  //               spreadRadius: 3,
                                  //               blurRadius: 3,
                                  //               offset: Offset(
                                  //                   0, 1), // changes position of shadow

                                  //             ),
                                  // ]
                                ),
                                child: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              const Text("   99944 19485, 94424 41294")
                            ],
                          ),
                          const SizedBox(height: 15),
                         
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                      child: Text(
                    "Reach Us",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  )),
                  const Text(
                    "Name*",
                    // style: labelStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (v) {
                      if (v == "" || v == null) {
                        return "Please enter name";
                      }
                      return null;
                    },
                    // controller: mobile,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    // decoration: Utility.inputDecoration,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Email Id*",
                    // style: labelStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (v) {
                      if (v == "" || v == null) {
                        return "Please enter email id";
                      }
                      return null;
                    },
                    // controller: mobile,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    // decoration: Utility.inputDecoration,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Mobie Number*",
                    // style: labelStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (v) {
                      if (v == null || v.length != 10) {
                        return "Please enter mobile no";
                      }
                      return null;
                    },
                    // controller: mobile,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                    ],
                    // decoration: Utility.inputDecoration,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Message*",
                    // style: labelStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (v) {
                      if (v == "" || v == null) {
                        return "Please enter message";
                      }
                      return null;
                    },
                    // controller: mobile,
                    maxLines: null,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    // decoration: Utility.inputDecoration,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: appbar_color
                ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      autofocus: true,
                      // style: Utility.buttonStyle,
                      onPressed: () {},
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
    ));
  }
}