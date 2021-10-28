import 'package:flutter/material.dart';
import 'package:cined/customcolor.dart';
//import 'package:grocery/no%20search%20product.dart';
import 'package:cined/tushar/no search product.dart';

class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
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
              buttonColor: Color(CColor.mcolor),
              minWidth: 150.0,
              height: 50,
                child:  RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Product()),);
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
}
