import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9faff),
      body: SingleChildScrollView(
        child: Container(
          //height: 700,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Icon(Icons.location_on_outlined,
                       color: Colors.black,
                       size: 20,
                     ),
                     SizedBox(width: 5,),
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Text("Current Location",
                           style: TextStyle(
                             fontSize: 16,
                             color: Color(0xff4f537f),
                           ),
                         ),
                         Text("Dhaka & Uttara",
                           style: TextStyle(
                             color: Color(0xffb5b6b5),
                             fontSize: 16,
                           ),
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 20, right: 5),
                       child: Icon(Icons.arrow_drop_down,
                         size: 20,
                         color: Colors.black,
                       ),
                     ),
                     SizedBox(width: 200,),
                     Icon(Icons.notifications_outlined,
                       size: 20,
                       color: Colors.black,
                     ),
                   ],
                      ),
                ),
               // SizedBox(height: 5,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(width: 10),
                      Image(image: AssetImage("images/Menubar.PNG"),
                      ),
                      //SizedBox(width: 30),
                      // Image(image: AssetImage("images/Searchbar.PNG"),
                      // ),
                      Expanded(
                          child: Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 12
                              ),
                              decoration: InputDecoration(
                                hintText: "Search for Product",
                                icon: Icon(Icons.search,size: 18,),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 12
                                )
                              ),
                            ),
                          ),
                      ),
                      //SizedBox(width: 10),
                      Image(image: AssetImage("images/Filterbar.PNG"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                  color: Colors.white70,
                  height: 450,
                  width: 350,
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/search.PNG"),
                      ),
                      SizedBox(height: 20,),
                      Text("No Search Result Found",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff7e80a1),
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text("country to popular belief.lorem ipsum",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff999999),
                        ),
                      ),
                      Text("is not simply rand",
                        style: TextStyle(
                           fontSize: 18,
                            color: Color(0xff999999),
                         ),
                       ),
                      SizedBox(height: 20,),
                      RaisedButton(
                        color: Colors.green,
                          onPressed: (){
                       // Navigator.push(context, MaterialPageRoute(builder:(context) => Product()),);
                         },
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                           child: Text("Button",
                           style: TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                          ),
                         ),
                        ),

                    ],
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
