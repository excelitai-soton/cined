import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cined/controller/signincontroller.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/new/nmyprofile.dart';
import 'package:cined/new/nsignup.dart';

class NSignInScreen extends StatelessWidget {
  const NSignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignInController());
    var email = TextEditingController();
    var password = TextEditingController();
    var is_check = false;

    signInScreen(){
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 0.5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Text('Sign In',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,color: Color(CColor.mcolor)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: TextFormField(
                        cursorColor: Color(CColor.mcolor),
                        controller: email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,color: Color(CColor.mcolor),),
                            hintText: 'Email',
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xfff1f1f1)
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: .5,
                                    color: Color(CColor.mcolor)
                                )
                            )
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: TextFormField(
                        cursorColor: Color(CColor.mcolor),
                        controller: password,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.compass_calibration_outlined,color: Color(CColor.mcolor),),
                            hintText: 'Password',
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xfff1f1f1)
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: .5,
                                    color: Color(CColor.mcolor)
                                )
                            )
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Checkbox(value: is_check, onChanged: (value){
                            is_check = true;
                        }),
                        Text("Remember Me")
                      ],
                    ),
                    //start button section
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NMyProfileScreen()));
                        },
                        child: Text('Log In Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(CColor.mcolor)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Or sign in with',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Color(CColor.mcolor),
                            width: 3
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(CColor.mcolor).withOpacity(.3),
                              blurRadius: 5,
                              spreadRadius: 1.5
                          )
                        ]
                    ),
                    child: Text('f',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.signIn();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Color(CColor.mcolor),
                              width: 3
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(CColor.mcolor).withOpacity(.3),
                                blurRadius: 5,
                                spreadRadius: 1.5
                            )
                          ]
                      ),
                      child: Text('G',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.7),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Color(CColor.mcolor),
                            width: 3
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(CColor.mcolor).withOpacity(.3),
                              blurRadius: 5,
                              spreadRadius: 1.5
                          )
                        ]
                    ),
                    child: Text('t',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have An Account?"),
                  GestureDetector(
                    onTap: (){
                      Get.to(NSignUpScreen());
                    },
                    child: Text(" Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(CColor.mcolor)
                      ),
                    ),
                  ),
                ],
              ),
              //SizedBox(height: MediaQuery.of(context).size.height/10,),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Center(
          child: Obx((){
            if(controller.googleAccount.value == null)
              return signInScreen();
            else
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.network(controller.googleAccount.value?.photoUrl??'').image,
                      radius: 100,
                    ),
                    Text(controller.googleAccount.value?.displayName??''),
                    Text(controller.googleAccount.value?.email??''),
                    ElevatedButton(
                        onPressed: (){
                          controller.signOut();
                        },
                        child: Text('log out')
                    ),
                  ],
                ),
              );
          })
      ),
    );
  }
}
