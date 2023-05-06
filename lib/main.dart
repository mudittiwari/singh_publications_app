// ignore_for_file: prefer_const_constructors

// next time work
// add to cart working
// add to wishlist working
// show items of cart on cart Page
// show items of wishlist on wishlist Page
// make product page user interface
// show profile information in profile page
// show orders in orders page

import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/login.dart';
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
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391

  // We store the app and auth to make testing with a named instance easier.
  app = await Firebase.initializeApp();
  auth = FirebaseAuth.instanceFor(app: app);
  runApp(MyApp());
}

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
    // print(auth.currentUser);
    // auth.signOut();
    if (auth.currentUser == null)
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    else
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
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
