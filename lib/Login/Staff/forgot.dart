import 'package:admission/Colors/Colors.dart'as Custom_color;
import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
   bool visiblePassword = true;
  bool CnfvisiblePassword = true;
  final _formKey = GlobalKey<FormState>();
  bool show_timer = false;
  bool show_send_otp = true;
  bool isLoading = false;
  bool isSaveLoading = false;

  String received_otp = "";
  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Container(
         decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg.jpg',),fit: BoxFit.fill)
        ),child: ListView(
          children: [
              SizedBox(
              height: screenHeight*0.2,
            ),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                    'Get Your New Password !!',
                    textStyle: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    
                    speed: const Duration(milliseconds: 25),
                  ),
                  
              ],
              totalRepeatCount: 1,),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                // height: screenHeight*0.55,
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
                                          child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  "Mobile Number*",
                                  style: TextStyle(
                                      color:  Color.fromARGB(255, 17, 159, 177),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (v) {
                              if (v == "" || v == null || v.length != 10) {
                                return "Please enter valid Mobile Number";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            // controller: mobile,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15),
                              filled: true,
                              fillColor: Colors.white,
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color:  Color.fromARGB(255, 17, 159, 177)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 17, 159, 177)),
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
                                borderSide: BorderSide(
                                    color:  Color.fromARGB(255, 17, 159, 177)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Align(
                          //   alignment: Alignment.centerRight,
                          //   child: InkWell(
                          //     onTap: () async {
                          //     //   if (mobile.text.length != 10) {
                          //     //     Utility.failureNote(
                          //     //         "Please enter valid Mobile number");
                          //     //   } else {
                          //     //     var data = {"mobileno": mobile.text};
                          //     //     setState(() {
                          //     //       isLoading = true;
                          //     //     });
                          //     //     var result =
                          //     //         await LoginService.forgotPasswordSendOTP(
                          //     //             data);
                          //     //     if (result["success"] == 200) {
                          //     //       setState(() {
                          //     //         received_otp = result["data"].toString();
                          //     //         isLoading = false;
                          //     //         show_timer = true;
                          //     //         show_send_otp = false;
                          //     //       });
                          //     //       await Future.delayed(Duration(seconds: 60),
                          //     //           () {
                          //     //         setState(() {
                          //     //           show_timer = false;
                          //     //           show_send_otp = false;
                          //     //           received_otp = '';
                          //     //         });
                          //     //       });
                          //     //     } else {
                          //     //       setState(() {
                          //     //         isLoading = false;
                          //     //         show_send_otp = false;
                          //     //       });
                          //     //       Utility.failureNote(result["message"] ??
                          //     //           "Something went wrong");
                          //     //     }
                          //     //   }
                          //     },
                          //     // child: isLoading
                          //     //     ? Utility.loading()
                          //     //     : show_timer
                          //     //         ?
                          //     //         // Container(
                
                          //     //         // )
                          //     //         OtpTimerButton(
                          //     //             controller: controller,
                          //     //             onPressed: () {},
                          //     //             text: Text(
                          //     //               "Otp will expire within given seconds :",
                          //     //               style: TextStyle(color: Colors.red),
                          //     //             ),
                          //     //             duration: 60)
                          //     //         : !show_send_otp
                          //     //             ? Text(
                          //     //                 'Resend OTP',
                          //     //                 style: TextStyle(
                          //     //                     color:
                          //     //                         Custom_color.appbar_color),
                          //     //               )
                          //     //             : Text(
                          //     //                 "Send Otp",
                          //     //                 style: TextStyle(
                          //     //                     color:
                          //     //                         Custom_color.appbar_color),
                          //     //               ),
                          //   ),
                          // ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  "Otp Number*",
                                  style: TextStyle(
                                      color:  Color.fromARGB(255, 17, 159, 177),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (v) {
                              if (v == "" ||
                                  v == null ||
                                  v.length != 4 ||
                                  received_otp != v) {
                                print(received_otp);
                                return "Please enter Valid OTP Number";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            // controller: OTP,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
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
                                borderSide: BorderSide(
                                    color:  Color.fromARGB(255, 17, 159, 177))
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color:  Color.fromARGB(255, 17, 159, 177)),
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
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 17, 159, 177)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  "New Password*",
                                  style: TextStyle(
                                      color:  Color.fromARGB(255, 17, 159, 177),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (v) {
                              if (v == null || v.isEmpty) {
                                return "Please enter new Password";
                              }
                              return null;
                            },
                            // controller: Password,
                            obscureText: visiblePassword,
                            decoration: InputDecoration(
                              suffixIconColor: appbar_color,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visiblePassword = !visiblePassword;
                                    });
                                  },
                                  icon: Icon(visiblePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15),
                              filled: true,
                              fillColor: Colors.white,
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: appbar_color),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: appbar_color),
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
                                borderSide: BorderSide(
                                    color: appbar_color),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: const Text(
                                  "Conform Password*",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 17, 159, 177),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (v) {
                              if (v == null || v.isEmpty ) {
                                return "Please enter Conform Password as same as Password";
                              }
                              return null;
                            },
                            // controller: Cnfpassword,
                            obscureText: CnfvisiblePassword,
                            decoration: InputDecoration(
                              suffixIconColor: appbar_color,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      CnfvisiblePassword = !CnfvisiblePassword;
                                    });
                                  },
                                  icon: Icon(CnfvisiblePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15),
                              filled: true,
                              fillColor: Colors.white,
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: appbar_color),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: appbar_color),
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
                                borderSide: BorderSide(
                                    color: appbar_color),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: appbar_color),
                              onPressed: ()  {
                                // if (_formKey.currentState!.validate()) {
                                //   setState(() {
                                //     isSaveLoading = true;
                                //   });
                                //   var data = {
                                      
                                //     'mobileno': mobile.text,
                                //     "password": Password.text,
                                //   };
                                //   var res = await LoginService.submitPass(data);
                                //   if (res["success"] == 200) {
                                //     Utility.successNote("Password Updated");
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) => Loginpage()));
                                //   } else {
                                //     Utility.failureNote(
                                //         res["message"] ?? "Something is went wrong");
                                //   }
                                //   setState(() {
                                //     isSaveLoading = false;
                                //   });
                                // } else {
                                //   Utility.failureNote(
                                //       "Please enter all required fields");
                                // }
                                      
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                              },
                              child: 
                              // isSaveLoading
                                  // ? Utility.loading()
                                  // :
                                   Text(
                                      'Submit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Go Back to",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Custom_color.appbar_color,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.grey),
                        ))
                  ],
                )
                        ],
                      ),
              ),
              ),
            )
            
          ],
        ),
      ),

    ));
  }
}