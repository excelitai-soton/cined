import 'package:flutter/material.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/home.dart';
// import 'package:grocery/Otp1.dart';
import 'package:cined/tushar/Otp1.dart';
class Third321 extends StatefulWidget {
  const Third321({Key key}) : super(key: key);

  @override
  _Third321State createState() => _Third321State();
}

class _Third321State extends State<Third321> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9faff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/Third Page.PNG",),
            ),
            SizedBox(height: 20),
            Text("Delivery in 30 min",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff434677),
              ),
            ),
            SizedBox(height: 10),
            Text("contrary to popular belief.lorem ",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffa3a3a3),
              ),
            ),
            Text("ipsum is not simply rand",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffa3a3a3),
              ),
            ),
            SizedBox(height: 60),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("1",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffa3a3a3),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Center(
                      child: Text("2",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffd0d1e1),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Center(
                      child: Text("3",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff8e90af),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 30,),
            ButtonTheme(
              buttonColor: Color(CColor.mcolor),
              minWidth: 300.0,
              height: 45,
              child:  RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => HomeScreen()),);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text("Get Start",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xffebf6ed),
                  ),
                ),
              ),
            ),
          ],

        ),

      ),
    );
  }
}
