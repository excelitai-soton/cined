import 'package:flutter/material.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/datamodel.dart';
import 'package:cined/home.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key key}) : super(key: key);

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {

  var isEmpty = true;


  @override
  Widget build(BuildContext context) {
    return isEmpty?Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: Color(CColor.mcolor),),
        title: Text('Wishlist',
          style: TextStyle(
              color: Color(CColor.mcolor)
          ),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image(image: AssetImage('images/Capture-removebg-preview.png'),height: 150,),
              SizedBox(height: 20,),
              Text('Your Wishlist is Empty',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 15,),
              Text('reference site about lorem ipsum',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              Text('giving information',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Spacer(),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Text('Continue Shopping',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(CColor.mcolor)
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    ):Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(CColor.mcolor),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: ()=>Navigator.of(context).pop()),
        title: Text('Wishlist',
          style: TextStyle(
              fontSize: 16
          ),
        ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].pro_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("${data[index].price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.shopping_bag,color: Color(CColor.mcolor),),
                  SizedBox(width: 10,),
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
                ],
              ),
              Divider()
            ],
          );
          }
      )
    );
  }
}

