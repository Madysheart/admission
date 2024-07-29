import 'package:admission/Colors/Colors.dart'  as Custom_color;
import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/Sdash.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:ffi';


class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
   final _formKey = GlobalKey<FormState>();
  bool visiblePassword = true;
    TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
    TextEditingController _mobnoController = TextEditingController();
      TextEditingController _staffController = TextEditingController();
  TextEditingController _desigController = TextEditingController();
    TextEditingController _deptController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Container(
         decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg.jpg',),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
            SizedBox(
              height: screenWidth*0.2,
            ),
             Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                    'Create Your Account !!',
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
                // width: screen*0.7,
                // height: screenHeight*0.85,
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
                padding: const EdgeInsets.all(22.0),
              
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Name*",
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
                          if (v == "" || v == null) {
                            return "Please enter name";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        controller: _nameController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
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
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Staff Id*",
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
                          if (v == "" || v == null) {
                            return "Please enter staffid";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        controller: _staffController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
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
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Designation*",
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
                          if (v == "" || v == null) {
                            return "Please enter designation";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        controller: _desigController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
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
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Dept*",
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
                          if (v == "" || v == null) {
                            return "Please enter dept";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        controller: _deptController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
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
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
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
                            return "Please enter Mobile no";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        controller: _mobnoController,
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
                        height: screenHeight * 0.03,
                      ),
                                
                                
                                
                                
                                
                                
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Password*",
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
                          if (v == "" || v == null) {
                            return "Please enter Password";
                          }
                          return null;
                        },
                        controller: _passwordController,
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
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 17, 159, 177)),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 3),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color:  Color.fromARGB(255, 17, 159, 177)),
                          ),
                        ),
                      ),
                                
                                SizedBox(
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
                              if (_formKey.currentState!.validate()) {
                      // Move to the sign-in navigation
                      Fluttertoast.showToast(
                                                        msg: 'Registered Successfully',
                                                        toastLength: Toast.LENGTH_SHORT,
                                                        gravity: ToastGravity.CENTER,
                                                        timeInSecForIosWeb: 3,
                                                        backgroundColor: Colors.green,
                                                        textColor: Colors.white);
                  
                  
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
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
                  
                            
                            
                            
                        
                        }, child: 
                        Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                                   Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                  Text("Already Have an Account ?",style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    
                  }, child: Text('Sign In',style: TextStyle(color: appbar_color,decoration: TextDecoration.underline,decorationColor: Colors.grey),))
                                ],
                                  )
                  
                                
                                
                    ],
                  ),
                ),
              ),
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}