import 'package:flutter/material.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/new/nmyprofile.dart';
// import 'package:grocery/Sucess.dart';
// import 'package:grocery/filter.dart';
import 'package:cined/tushar/Sucess.dart';
// import 'package:new_ecom_app/tushar/filter.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTP1 extends StatefulWidget {
  const OTP1({Key key}) : super(key: key);

  @override
  _OTP1State createState() => _OTP1State();
}

class _OTP1State extends State<OTP1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_outlined,
                    size: 15,
                    ),
                    SizedBox(width: 10,),
                    Text("Enter Verification Code",
                    style: TextStyle(
                      color: Color(0xff484b7a),
                      fontSize: 18,
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Image(image: AssetImage("images/post321.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      //fieldWidth: 10,
                      style: TextStyle(
                      fontSize: 17
                        ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin); // end onSubmit
                      }
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text("Didn't get OTP code?",
                          style: TextStyle(
                            color: Color(0xff9799b4),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("RESEND",
                        style: TextStyle(
                          color: Color(CColor.mcolor).withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text("demo Verification Code",
                          style: TextStyle(
                            color: Color(0xff9799b4),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("1234",
                        style: TextStyle(
                          color: Color(CColor.mcolor).withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 20,),
                 RaisedButton(
                   color: Color(CColor.mcolor),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Sucess()),);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text("Next",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffebf6ed),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
