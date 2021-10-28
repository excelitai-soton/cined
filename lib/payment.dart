import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: ()=>Navigator.pop(context),icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text("PAYMENT",
        style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
           //nfc section start
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            color: Color(0xffefefef),
            child: Row(
              children: [
                Text('NFC',style: TextStyle(
                  color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold
                ),),
                RotatedBox(
                    child: Icon(Icons.wifi_sharp,color: Colors.grey,size: 35,),
                  quarterTurns: 1,
                ),
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black54,
                            fontSize: 12
                          ),
                        text: 'Bring contactiess card closer to the device to fill the fields automatically. ',
                        children: [
                          TextSpan(
                            text: 'Enable NFC.',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            )
                          )
                        ]
                      )
                  ),
                )
              ],
            ),
          ),
           //nfc section end
           //list section start
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('Mastercard'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
                Divider(indent: 15,),
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('AMEX'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
                Divider(indent: 15,),
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('Gift Card'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
                Divider(indent: 15,),
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('IN Card'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
                Divider(indent: 15,),
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('PayPal'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
                Divider(indent: 15,),
                ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.withOpacity(.2),
                      child: Image(image: AssetImage('images/Marketing-Strategy-of-Mastercard-3-removebg-preview.png'),width: 50,)),
                  title: Text('Google Pay'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                ),
              ],
            ),
          )
           //list section end
        ],
      ),
    );
  }
}
