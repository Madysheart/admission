import 'package:admission/Colors/Colors.dart';
import 'package:admission/Login/Staff/Follow.dart';
import 'package:admission/Login/Staff/History.dart';
import 'package:admission/Login/Staff/Sdash.dart';
import 'package:admission/Login/Staff/login.dart';
import 'package:admission/Login/Staff/pass.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Sprofile extends StatefulWidget {
  const Sprofile({super.key});

  @override
  State<Sprofile> createState() => _SprofileState();
}

class _SprofileState extends State<Sprofile> {
    bool visiblePassword = true;
  bool showPassword = true;
  bool viewPassword = true;

  String dayvalue = 'Class';
   var items1 = [
    'Class',
    'BCA',
    'MCA',
  ]; 

   String dropdownvalue = 'Select Gender';

  // List of items in our dropdown menu
  var items = [
    'Select Gender',
    'Male',
    'female',
  ];
   var _selectedIndex=1;
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         iconTheme: IconThemeData(
          color: Colors.white
        ),
      title: Text("My Profile",style: TextStyle(color: Colors.white,fontSize: 18),),
      backgroundColor: appbar_color,
      leading: Icon(Icons.person),
      ),
       bottomNavigationBar: GNav(
        backgroundColor: appbar_color,
       
        activeColor: Colors.white,

        tabs: [
        GButton(icon: Icons.home,
        text: 'Home',),
          GButton(icon: Icons.person,
          text: 'Profile',),
            GButton(icon: Icons.phone_callback,
            text: 'Follows',),
              GButton(icon: Icons.timer,
              text: 'History',)
      ],
      selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });

                _selectedIndex==0?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sdashboard() )):


                _selectedIndex==1?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sprofile() )):

                 _selectedIndex==2?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Follows() )):

                 
                Navigator.push(context, MaterialPageRoute(builder: (context)=>History() ));

              },

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0,left: 20),
                child: Container(
                  height: screenHeight*0.18,
                  width: screenWidth*0.5,
                         
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            // borderRadius: ,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image(image: AssetImage('assets/men2.png'),),
                          ),
                          // child: Padding(
                          //     padding: const EdgeInsets.all(17.0),
                          //     child: 
                
                              
                
                          //     // _imageFile == null?
                          //     // image==null?
                          //     // Icon(Icons.image)
                          //     // :
                          //     //  Image(image: NetworkImage('https://guhanautofinance.in/${image}'))
                
                          //     //  :
                          //     //  Image.file(
                          //     //         //to show image, you type like this.
                          //     //         File(_imageFile!.path),
                          //     //         fit: BoxFit.fill,
                          //     //         width: MediaQuery.of(context).size.width,
                          //     //         height: 300,
                          //     //       )
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                          //  
                        ),
                        
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextButton(onPressed: (){}, child: Text("Change Photo",style: TextStyle(color: appbar_color),)),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                     Row(
                                                                   children: [
                                                                     Text(
                                                                       "Username*",
                                                                       style: TextStyle(color: appbar_color,fontWeight: FontWeight.bold),
                                                                     ),
                                                                   ],
                                                                 ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                 ),
                                              TextFormField(
                                                                            validator: (v) {
                                                                              if (v == "" || v == null ) {
                                                                                return "Please enter username";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.text,
                                                                            
                                                                      //       inputFormatters: [
                                                                      //   LengthLimitingTextInputFormatter(10),
                                                                      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                                                                      // ],
                                                                            // controller: mobile,
                                                                            decoration:  InputDecoration(
                                                                              contentPadding:
                                                                              
                                                                                  EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                                                              filled: true,
                                                                              fillColor: Colors.white,
                                                                              hintText: 'Sangili',
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: Colors.red, width: 3),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                            ),
                                                          ),
                                                          SizedBox(
                    height: 10,
                  ),
                                                           Row(
                                                                   children: [
                                                                     Text(
                                                                       "Staff id*",
                                                                       style: TextStyle(color: appbar_color,fontWeight: FontWeight.bold),
                                                                     ),
                                                                   ],
                                                                 ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                 ),
                                              TextFormField(
                                                                            validator: (v) {
                                                                              if (v == "" || v == null ) {
                                                                                return "Please enter register no";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.text,

                                                                      //       inputFormatters: [
                                                                      //   LengthLimitingTextInputFormatter(10),
                                                                      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                                                                      // ],
                                                                            // controller: mobile,
                                                                            decoration:  InputDecoration(
                                                                              contentPadding:
                                                                                  EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                                                              filled: true,
                                                                              fillColor: Colors.white,
                                                                              hintText: 'IUC005',
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: Colors.red, width: 3),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                            ),
                                                          ),
                                                          SizedBox(
                    height: 10,
                  ),
                                                           Row(
                                                                   children: [
                                                                     Text(
                                                                       "Dept*",
                                                                       style: TextStyle(color: appbar_color,fontWeight: FontWeight.bold),
                                                                     ),
                                                                   ],
                                                                 ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                 ),
                                              TextFormField(
                                                                            validator: (v) {
                                                                              if (v == "" || v == null ) {
                                                                                return "Please enter Dept";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.text,
                                                                      //       inputFormatters: [
                                                                      //   LengthLimitingTextInputFormatter(10),
                                                                      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                                                                      // ],
                                                                            // controller: mobile,
                                                                            decoration:  InputDecoration(
                                                                              contentPadding:
                                                                                  EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                                                              filled: true,
                                                                              fillColor: Colors.white,
                                                                              hintText: 'MCA',
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: Colors.red, width: 3),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                            ),
                                                          ),
                                                          SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Class",style: TextStyle(fontWeight: FontWeight.bold,color: appbar_color),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                                                          Container(
                                                          width: screenWidth * 0.95,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: appbar_color),
                                                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 12.0, right: 12),
                                                            child: DropdownButtonHideUnderline(
                                                              child: DropdownButton(
                                                                // Initial Value
                                                                value: dayvalue,
                                                          
                                                                // Down Arrow Icon
                                                                icon: const Icon(Icons.keyboard_arrow_down),
                                                          
                                                                // Array list of items
                                                                items: items1.map((String items) {
                                                                  return DropdownMenuItem(
                                                                    value: items,
                                                                    child: Text(items),
                                                                  );
                                                                }).toList(),
                                                                // After selecting the desired option,it will
                                                                // change button value to selected value
                                                                onChanged: (String? newValue) {
                                                                  setState(() {
                                                                    dayvalue = newValue!;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                                          ),
                    SizedBox(
                    height: 10,
                  ),
                   Row(
                    children: [
                      Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,color:appbar_color),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                      Container(
                        width: screenWidth * 0.95,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:appbar_color,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,
                      
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),
                      
                              // Array list of items
                              items: items.map((String items) {
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
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                  SizedBox(
                    height: 10,
                  ),
                   Row(
                                                                   children: [
                                                                     Text(
                                                                       "E- mail*",
                                                                       style: TextStyle(color: appbar_color,fontWeight: FontWeight.bold),
                                                                     ),
                                                                   ],
                                                                 ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                 ),
                                              TextFormField(
                                                                            validator: (v) {
                                                                              if (v == "" || v == null ) {
                                                                                return "Please enter E-mail";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.text,
                                                                      //       inputFormatters: [
                                                                      //   LengthLimitingTextInputFormatter(10),
                                                                      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]*')),
                                                                      // ],
                                                                            // controller: mobile,
                                                                            decoration:  InputDecoration(
                                                                              contentPadding:
                                                                                  EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                                                              filled: true,
                                                                              fillColor: Colors.white,
                                                                              hintText: 'Sangili@gmail.com',
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: appbar_color),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color: Colors.red, width: 3),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                                                borderSide:
                                              BorderSide(color:  appbar_color),
                                                                              ),
                                                                            ),
                                                          ),
                                                         
                    SizedBox(
                        height: 10,
                      ),
                
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: appbar_color
                ),
                onPressed: (){
                  Fluttertoast.showToast(
                                                      msg: 'Updated Successfully',
                                                      toastLength: Toast.LENGTH_SHORT,
                                                      gravity: ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 3,
                                                      backgroundColor: Colors.green,
                                                      textColor: Colors.white);


                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sdashboard(),));
                }, child: Text("Update")),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30),
                  child: Row(
                    children: [
                      
                   Text('Need to Update Password ??',style: TextStyle(color: Colors.black),),
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Passwordst()));
                   }, child: Text('Update Here',style: TextStyle(color: appbar_color),))
                    ],
                  ),
                )
             
            ],
          ),
        ),
      ),

    ));
  }
}