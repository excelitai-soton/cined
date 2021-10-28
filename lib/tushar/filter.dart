import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:grocery/Cart.dart';
import 'package:cined/tushar/Cart.dart';
class Filter extends StatefulWidget {
  const Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  static double _lowerValue = 1.0;
  static double _upperValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9faff),
      body: SafeArea(
        child: Center(
          child: Container(
            //height: 100,
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                      Text("Filter",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff686b93),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sort By",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black
                                ),
                              ),
                              //SizedBox(width: 285,),
                              Text("All clear",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Lowest",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightGreen,
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Highest",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Best",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Newest",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Price",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text("S60"),
                              SizedBox(width: 110,),
                              Text("S120"),
                            ],
                          ),
                        ),
                        SizedBox(height: 2,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140,),
                              child: Image(image: AssetImage(
                                  "images/Underline.PNG"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text("Category",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 2),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text("Fruits",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightGreen,
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Seefood",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Bread",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Frozen",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text("Organic",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 5,),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text("Milk & Egg",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffd8eedc),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    Text("Meat",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        ButtonTheme(
                          buttonColor: Color(0xffd8eedc),
                          minWidth: 200.0,
                          //height: 100.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Cart()),);
                            },
                            child: Column(
                              children: [
                                Text("Apply",
                                  style: TextStyle(
                                    color: Color(0xff626b8a),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
      ),
    );
    // body: Center(
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Text("Sort By",
    //             style: TextStyle(
    //                 fontSize: 16,
    //                 color: Colors.black
    //             ),
    //           ),
    //           SizedBox(width: 285,),
    //           Text("All clear",
    //             style: TextStyle(
    //                 fontSize: 16,
    //                 color: Colors.black
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 10),
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Lowest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Colors.lightGreen,
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Highest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Best",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Newest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 20),
    //       Text("Price",
    //         style: TextStyle(
    //           fontSize: 20,
    //         ),
    //       ),
    //       SizedBox(height: 10,),
    //       Row(
    //         children: [
    //           Text("S60"),
    //           SizedBox(width: 110,),
    //           Text("S120"),
    //         ],
    //       ),
    //       SizedBox(height: 5,),
    //       Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(right: 140,),
    //             child: Image(image: AssetImage("images/Underline.PNG"),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 30,),
    //       Text("Category",
    //         style: TextStyle(
    //           fontSize: 18,
    //         ),
    //       ),
    //       SizedBox(height: 10),
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Fruits",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Colors.lightGreen,
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Seefood",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Bread",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Frozen",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             child: Column(
    //               children: [
    //                 Text("Organic",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             child: Column(
    //               children: [
    //                 Text("Milk & Egg",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10,),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Meat",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 200,),
    //       ButtonTheme(
    //         buttonColor: Color(0xffd8eedc),
    //         minWidth: 200.0,
    //         //height: 100.0,
    //         child: RaisedButton(
    //           onPressed: (){
    //             Navigator.push(context, MaterialPageRoute(builder:(context) => Cart()),);
    //           },
    //           child: Column(
    //             children: [
    //               Text("Apply",
    //                 style: TextStyle(
    //                   color: Color(0xff626b8a),
    //                   fontSize: 20,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //
    //       ),
    //
    //     ],
    //   ),
    // child: Column(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 8),
    //       child: Row(
    //         children: [
    //           Text("Sort By",
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.black
    //           ),
    //           ),
    //           SizedBox(width: 285,),
    //           Text("All clear",
    //             style: TextStyle(
    //                 fontSize: 16,
    //                 color: Colors.black
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 10),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 5),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //            ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Lowest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Colors.lightGreen,
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Highest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Best",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Newest",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 20),
    //     Padding(
    //       padding: EdgeInsets.only(right: 350),
    //       child: Text("Price",
    //       style: TextStyle(
    //         fontSize: 20,
    //       ),
    //       ),
    //     ),
    //     SizedBox(height: 10,),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 9),
    //       child: Row(
    //         children: [
    //           Text("S60"),
    //           SizedBox(width: 110,),
    //           Text("S120"),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 5,),
    //     Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(right: 140,),
    //           child: Image(image: AssetImage("images/Underline.PNG"),
    //           ),
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 30,),
    //     Padding(
    //       padding: EdgeInsets.only(right: 325),
    //       child: Text("Category",
    //         style: TextStyle(
    //           fontSize: 18,
    //         ),
    //       ),
    //     ),
    //     SizedBox(height: 10),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 5),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Fruits",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Colors.lightGreen,
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Seefood",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Bread",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Frozen",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             child: Column(
    //               children: [
    //                 Text("Organic",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 5),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             child: Column(
    //               children: [
    //                 Text("Milk & Egg",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 10,),
    //           ElevatedButton(
    //             onPressed: (){},
    //             style: ElevatedButton.styleFrom(
    //               primary: Color(0xffd8eedc),
    //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //               textStyle: TextStyle(
    //                 fontSize: 10,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //
    //             child: Column(
    //               children: [
    //                 Text("Meat",
    //                   style: TextStyle(
    //                     fontSize: 10,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 200,),
    //     ButtonTheme(
    //       buttonColor: Color(0xffd8eedc),
    //       minWidth: 200.0,
    //       //height: 100.0,
    //       child: RaisedButton(
    //         onPressed: (){
    //           Navigator.push(context, MaterialPageRoute(builder:(context) => Cart()),);
    //         },
    //         child: Column(
    //           children: [
    //             Text("Apply",
    //               style: TextStyle(
    //                 color: Color(0xff626b8a),
    //                 fontSize: 20,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //     ),
    //
    //   ],
    // ),
  }
}
