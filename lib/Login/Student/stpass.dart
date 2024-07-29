import 'package:admission/Colors/Colors.dart';
import 'package:flutter/material.dart';

class stPassword extends StatefulWidget {
  const stPassword({super.key});

  @override
  State<stPassword> createState() => _stPasswordState();
}

class _stPasswordState extends State<stPassword> {
  @override
    bool visiblePassword = true;
  bool showPassword = true;
  bool viewPassword = true;
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: 
    AppBar(
       iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Update Password",style: TextStyle(color: Colors.white,fontSize: 18),),
        backgroundColor: appbar_color,
    ),
     body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Enter old Password",
                                      style: TextStyle(
                                          color: appbar_color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                validator: (v) {
                                  if (v == "" || v == null) {
                                    return "Please enter old Password";
                                  }
                                  return null;
                                },
                                // controller: oldPasswordcontroller,
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
                                  focusedErrorBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                  enabledBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color:appbar_color),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 3),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                ),
                              ),
                    SizedBox(
                      height: 20,
                    ),
                     Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Enter New Password*",
                                      style: TextStyle(
                                          color: appbar_color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                validator: (v) {
                                  if (v == "" || v == null) {
                                    return "Please enter new Password";
                                  }
                                  return null;
                                },
                                // controller: newPasswordcontroller,
                                obscureText: viewPassword,
                                decoration: InputDecoration(
                                  suffixIconColor: appbar_color,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          viewPassword = !viewPassword;
                                        });
                                      },
                                      icon: Icon(viewPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 15),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedErrorBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color:appbar_color),
                                  ),
                                  enabledBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 3),
                                  ),
                                  focusedBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                ),
                              ),
                
                    SizedBox(
                      height: 20,
                    ),
                     Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Confirm Password*",
                                      style: TextStyle(
                                          color: appbar_color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                validator: (v) {
                                  if (v == "" || v == null) {
                                    return "Please enter Confirm Password";
                                  }
                                  return null;
                                },
                                // controller: confirmpasscontroller,
                                obscureText: showPassword,
                                decoration: InputDecoration(
                                  suffixIconColor: appbar_color,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                      icon: Icon(showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 15),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedErrorBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                  enabledBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: appbar_color),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 3),
                                  ),
                                  focusedBorder:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color:appbar_color),
                                  ),
                                ),
                              ),
                    SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: appbar_color
                        ),
                        
                        onPressed: (){}, child: Text('Change'))
        ],
        
                   
                    
        
      ),
    ),));
  }
}