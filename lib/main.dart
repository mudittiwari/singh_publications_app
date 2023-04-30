// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/utils.dart';
// import 'package:myapp/page-1/cart.dart';
// import 'package:myapp/page-1/profile-setting.dart';
// import 'package:myapp/page-1/accont-setting.dart';
// import 'package:myapp/page-1/billing-addrss-account-setting.dart';
// import 'package:myapp/page-1/shipping-addrss-account-setting.dart';
// import 'package:myapp/page-1/delivery-address.dart';
// import 'package:myapp/page-1/payment-gateway.dart';
// import 'package:myapp/page-1/order-placed.dart';
// import 'package:myapp/page-1/wishlist.dart';
// import 'package:myapp/page-1/orders.dart';
// import 'package:myapp/page-1/home.dart';
// import 'package:myapp/page-1/product-page.dart';
// import 'package:myapp/page-1/downloads.dart';
// import 'package:myapp/page-1/listen.dart';
// import 'package:myapp/page-1/read.dart';
// import 'package:myapp/page-1/profile.dart';
// import 'package:myapp/page-1/logout.dart';
// import 'package:myapp/page-1/order-detail.dart';
// import 'package:myapp/page-1/user.dart';
import 'package:myapp/page-1/splash-screen.dart';
// import 'package:myapp/page-1/registration.dart';
// import 'package:myapp/page-1/shipping-address.dart';
// import 'package:myapp/page-1/billing-address.dart';
// import 'package:myapp/page-1/login.dart';
// import 'package:myapp/page-1/otp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), mainfunction);
  }

  void mainfunction() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image(
              image: AssetImage(
                'assets/page-1/images/logo.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Center(
              child: Text(
                "Singh Publication",
                style: new TextStyle(
                    color: Color(0xff315ED2),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
