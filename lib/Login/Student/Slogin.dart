import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/signin.dart';
import 'package:admission/Login/Student/Appform.dart';
import 'package:admission/Login/Student/SForgot.dart';
import 'package:admission/Login/Student/SSignin.dart';
import 'package:admission/Login/Student/stdash.dart';
import 'package:admission/Login/getsta.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SSlogin extends StatefulWidget {
  const SSlogin({super.key});

  @override
  State<SSlogin> createState() => _SSloginState();
}

class _SSloginState extends State<SSlogin> {
   final _formKey = GlobalKey<FormState>();
    bool visiblePassword = true;
     TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
              height: screenHeight*0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                    'Login to Get Started !!',
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
                                        child:  Padding(
                 padding: const EdgeInsets.only(left:20.0,right: 20,top: 12),
                 child: Form(
                  key:_formKey,
                   child: Column(
                     children: [
                     const  Row(
                         children: [
                           Text(
                             "Username*",
                             style: TextStyle(color: Color.fromARGB(255, 17, 159, 177),fontWeight: FontWeight.bold),
                           ),
                         ],
                       ),
                      const SizedBox(
                        height: 10,
                       ),
                                          TextFormField(
                                            
                                  validator: (v) {
                                    if (v!.isEmpty ) {
                                      return "Please enter username";
                                    }
                                    return null;
                                  },
                                  controller: _usernameController,
                                  
                            //       inputFormatters: [
                            //   LengthLimitingTextInputFormatter(10),
                            //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                            // ],
                                  // controller: mobile,
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
                                                       const Row(
                                  children: [
                                    Text(
                                      "Password*",
                                      style: TextStyle(color: Color.fromARGB(255, 16, 169, 190),fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                                      ),
                                                      
                                                      const SizedBox(height: 5),
                                                      TextFormField(
                                                      
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Please enter Password";
                                    }
                                    return null;
                                  },
                                    controller: _passwordController,
                                  // controller: Password,
                                  obscureText: visiblePassword,
                                  decoration:  InputDecoration(
                                    suffixIconColor: appbar_color,
                                    suffixIcon: IconButton(onPressed: (){
                                      setState(() {
                                        visiblePassword = !visiblePassword;
                                      });
                                    }, icon: Icon(
                                      visiblePassword ?
                                      Icons.visibility:
                                      Icons.visibility_off
                                    )),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide:
                                          BorderSide(color: appbar_color),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide:
                                          BorderSide (color: appbar_color),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide:
                                          BorderSide(color: appbar_color),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      borderSide:
                                          BorderSide(color: appbar_color),
                                    ),
                                  ),
                                                      ),
                                                        Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth*0.4,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SForgot()));
                                      },
                                      child: Text(
                                        'Forget Password ?',
                                        style: TextStyle(color: appbar_color),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: appbar_color
                                  ),
                                  onPressed: (){
                                    _formKey.currentState!.validate();
                                      
                            
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
                                                      msg: 'Login Successfully',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 3,
                                                      backgroundColor: Colors.green,
                                                      textColor: Colors.white);


                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Stdashboard(),));
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
                                Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have Account ?",style: TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SSignin()));
                            
                          }, child: Text('Sign Up',style: TextStyle(color: appbar_color,decoration: TextDecoration.underline,decorationColor: Colors.grey),))
                        ],
                      )
                          
                              
                                 
                                            
                     ],
                   ),
                 ),
               ),
              ),
            ),
             SizedBox(
              height: 20,
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Getstart()));
        
            }, child: Text("Go Back",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),))
            
                                 
                              ],
                                                  ),
                                                  
                                                 
                                                 
      )

    ));
  }
}