import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cined/checkout.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/datamodel.dart';
import 'package:cined/home.dart';
import 'package:cined/new/checkout.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {

  bool isEmpty = false;

  whenEmpty(){
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_outlined,
                    size: 16,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10,),
                  Text("My Cart",
                    style: TextStyle(
                      color: Color(0xff393d6f),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 250),
              Image(image: AssetImage("images/Cart.PNG"),
              ),
              SizedBox(height: 20),
              Text("Your Cart is Empty",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff525581),
                ),
              ),
              SizedBox(height: 20),
              Text("contrary to popular belief. lorem ipsum",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa3a3a3),
                ),
              ),
              Text("is not simply rand",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xffa3a3a3),
                ),
              ),
              SizedBox(height: 120),
              ButtonTheme(
                buttonColor: Colors.green,
                minWidth: 150.0,
                height: 50,
                child:  RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => HomeScreen()),);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text("Start Shopping",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isEmpty? whenEmpty(): Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        title: Text('My Cart(2)',style: TextStyle(
            color: Colors.white,
            fontSize: 16
        ),),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: IconButton(
                icon: Icon(Icons.search,color: Color(CColor.mcolor),),
                onPressed: (){}
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: MyCartClass().list.length,
          itemBuilder: (_,index){
          var data = MyCartClass().list;
          return Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage(data[index].pro_image),height: 100,width: 100,),
                  //SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].pro_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      ),
                      Row(
                        children: [
                          Text("${data[index].price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(" x ${data[index].quantity}",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffc2c2c2)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 7,vertical: 2),
                              decoration: BoxDecoration(
                                  color: Color(CColor.mcolor),
                                  // border: Border.all(
                                  //     color: Color(0xffc2c2c2)
                                  // ),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: FaIcon(FontAwesomeIcons.minus,size: 12,color: Colors.white,)
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffc2c2c2)
                                ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text('1',
                              style: TextStyle(
                                fontSize: 12
                              ),
                              )
                          ),
                          SizedBox(width: 10,),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 7,vertical: 2),
                              decoration: BoxDecoration(
                                  color: Color(CColor.mcolor),
                                  // border: Border.all(
                                  //     color: Color(0xffc2c2c2)
                                  // ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: FaIcon(FontAwesomeIcons.plus,size: 12,color: Colors.white,)
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xfff1f1f1),
                    child: Text('X',
                      style: TextStyle(
                          fontSize: 12,
                        color: Colors.black
                      ),
                    )
                  ),
                  SizedBox(width: 10,)
                ],
              ),
              Divider()
            ],
          );
          }
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color(CColor.mcolor)
              ),
              borderRadius: BorderRadius.circular(6)
          ),
          child: Row(
            children: [
              Text('Sub-Total: ',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffc2c2c2)
                ),
              ),
              Text('\$46.0',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(CColor.mcolor)
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NCheckoutScreen()));
                },
                child: Text('Checkout',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(CColor.mcolor)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
