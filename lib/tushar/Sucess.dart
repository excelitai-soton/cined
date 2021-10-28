import 'package:flutter/material.dart';
import 'package:cined/new/nmyprofile.dart';
// import 'package:grocery/Cart.dart';
import 'package:cined/tushar/Cart.dart';
class Sucess extends StatefulWidget {
  const Sucess({Key key}) : super(key: key);

  @override
  _SucessState createState() => _SucessState();
}

class _SucessState extends State<Sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff757575),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_outlined,
                      color: Color(0xff2f3143),
                      size: 15,
                    ),
                    SizedBox(width: 10,),
                    Text("Enter Verification Code",
                      style: TextStyle(
                        color: Color(0xff2f3143),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                  child: Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 20,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20,),
                        Image(image: AssetImage("images/Success.PNG"),
                        ),
                        SizedBox(height: 40,),
                        Text("Success",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff95cfa0),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text("Now check your email for",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff7fc58c),
                          ),
                        ),

                        Text("confirmation link",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff7fc58c),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ButtonTheme(
                          minWidth: 300,
                          child: RaisedButton(
                            color: Colors.indigo,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context) => NMyProfileScreen()),);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text("OK",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xffebf6ed),
                              ),
                            ),
                          ),
                        ),

                      ],
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
