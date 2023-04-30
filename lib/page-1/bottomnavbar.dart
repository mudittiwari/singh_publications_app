// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/page-1/cart.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/profile.dart';
import 'package:myapp/page-1/wishlist.dart';

class bottomnavbar extends StatefulWidget {
  String active;
  bottomnavbar({super.key, required this.active});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  // String widget.active = 'home';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.active = 'cart';
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: widget.active == 'cart' ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    // topLeft: Radius.circular(40),
                  ),
                ),
                height: 60,
                width: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color:
                          widget.active == 'cart' ? Colors.white : Colors.blue,
                      size: 30,
                    ),
                    widget.active == 'cart'
                        ? Text(
                            "Cart",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text("")
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.active = 'home';
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: widget.active == 'home' ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                height: 60,
                width: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color:
                          widget.active == 'home' ? Colors.white : Colors.blue,
                      size: 30,
                    ),
                    widget.active == 'home'
                        ? Text(
                            "home",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text("")
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.active = 'wishlist';
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Wishlist()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color:
                      widget.active == 'wishlist' ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                height: 60,
                width: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: widget.active == 'wishlist'
                          ? Colors.white
                          : Colors.blue,
                      size: 30,
                    ),
                    widget.active == 'wishlist'
                        ? Text(
                            "Wishlist",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text("")
                  ],
                ),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.active = 'user';
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: widget.active == 'user' ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.only(
                    // topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                height: 60,
                width: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color:
                          widget.active == 'user' ? Colors.white : Colors.blue,
                      size: 30,
                    ),
                    widget.active == 'user'
                        ? Text(
                            "Profile",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text("")
                  ],
                ),
              ),
            )),
          ],
        ));
  }
}
