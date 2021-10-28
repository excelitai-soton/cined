import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cined/account.dart';
import 'package:cined/category.dart';
import 'package:cined/customcolor.dart';
import 'package:cined/front.dart';
import 'package:cined/mycart.dart';
import 'package:cined/myprofile.dart';
import 'package:cined/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var pageController;
  var getPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();

  }

  whenPageChanges(int pageIndex){
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  onTabChangePage(int pageIndex){
    pageController.animateToPage(pageIndex,duration: Duration(milliseconds: 400),curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          FrontScreen(),
          CategoryScreen(),
          MyCartScreen(),
          AccountScreen(),
          MyProfileScreen(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        border: Border(top: BorderSide.none),
        currentIndex: getPageIndex,
          onTap: onTabChangePage,
          activeColor: Color(CColor.mcolor),
          inactiveColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 25,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.widgets,size: 25,),label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,size: 25,),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 25,),label: 'Account'),
          ]
      )
    );
  }
}
