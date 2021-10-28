import 'package:flutter/material.dart';
import 'package:cined/customcolor.dart';
// import 'package:grocery/second%20page.dart';
import 'package:cined/tushar/second page.dart';
class First extends StatefulWidget {
  const First({Key key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9faff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/First Page.PNG"),
            ),
            Text("Browse all the Category",
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
                          color: Color(0xff8e90af),
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
                          color: Color(0xffd0d1e1),
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
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Second()),);
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
      // body: SingleChildScrollView(
      //   //scrollDirection: Axis.vertical,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(vertical: 210),
      //     child: Container(
      //       child: Column(
      //         children: [
      //           Image(image: AssetImage("images/First Page.PNG"),
      //           ),
      //           Text("Browse all the Category",
      //             style: TextStyle(
      //               fontSize: 20,
      //               color: Color(0xff434677),
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //           Text("contrary to popular belief.lorem ",
      //             style: TextStyle(
      //               fontSize: 18,
      //               color: Color(0xffa3a3a3),
      //             ),
      //           ),
      //           Text("ipsum is not simply rand",
      //             style: TextStyle(
      //               fontSize: 15,
      //               color: Color(0xffa3a3a3),
      //             ),
      //           ),
      //           SizedBox(height: 60),
      //           Padding(
      //             padding: const EdgeInsets.only(left: 180),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Center(
      //                       child: Text("1",
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         color: Color(0xff8e90af),
      //                       ),
      //                       ),
      //                     ),
      //                     SizedBox(width: 10,),
      //                     Center(
      //                       child: Text("2",
      //                         style: TextStyle(
      //                           fontSize: 20,
      //                           color: Color(0xffd0d1e1),
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(width: 10,),
      //                     Center(
      //                       child: Text("3",
      //                         style: TextStyle(
      //                           fontSize: 20,
      //                           color: Color(0xffd0d1e1),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 30,),
      //           ButtonTheme(
      //             buttonColor: Colors.green,
      //             minWidth: 300.0,
      //             height: 45,
      //             child:  RaisedButton(
      //               onPressed: (){
      //                 Navigator.push(context, MaterialPageRoute(builder:(context) => Second()),);
      //               },
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10.0),
      //               ),
      //               child: Text("Get Start",
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 18,
      //                   color: Color(0xffebf6ed),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
