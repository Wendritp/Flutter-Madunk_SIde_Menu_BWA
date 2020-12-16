import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'class_builder.dart';
import 'home.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  KFDrawerController _kfDrawerController;

  @override
  void initState() {
    super.initState();
    _kfDrawerController = KFDrawerController(
        initialPage: ClassBuilder.fromString('Home'),
        items: [
          KFDrawerItem.initWithPage(
            text: Text(
              "Main Menus",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          KFDrawerItem.initWithPage(
            text: Text(
              "My Wallet",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            icon: Image.asset(
              "assets/images/1.png",
              height: 28,
              width: 28,
            ),
            page: Home(),
          ),
          KFDrawerItem.initWithPage(
            text: Text(
              'Delivery',
              style: TextStyle(color: Color(0xffFCB92F), fontSize: 16),
            ),
            icon: Image.asset(
              "assets/images/2.png",
              height: 28,
              width: 28,
            ),
            page: Home(),
          ),
          KFDrawerItem.initWithPage(
            text: Text(
              'Shopping Cart',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            icon: Image.asset(
              "assets/images/3.png",
              height: 28,
              width: 28,
            ),
          ),
          KFDrawerItem.initWithPage(
            text: Text(
              'Receipt',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            icon: Image.asset(
              "assets/images/4.png",
              height: 28,
              width: 28,
            ),
          ),
          KFDrawerItem.initWithPage(
            text: Text(
              'My Information',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            icon: Image.asset(
              "assets/images/5.png",
              height: 28,
              width: 28,
            ),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: KFDrawer(
            controller: _kfDrawerController,
            footer: KFDrawerItem(
              text: Text(""),
            ),
            decoration: BoxDecoration(color: Color(0xff4E37B2))));
  }
}
