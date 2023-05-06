import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bookcomp extends StatefulWidget {
  String product;
  Function callback;
  String? user;
  Bookcomp({
    super.key,
    required this.product,
    required this.user,
    required this.callback,
  });

  @override
  State<Bookcomp> createState() => _BookcompState();
}

class _BookcompState extends State<Bookcomp> {
  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  removefromwishlist(var id) async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/removefromwishlist?id=${json.decode(widget.user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(widget.user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "product_id": id,
      // 'password': passwordController.text.trim()
    };
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');
    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    // print(responseBody);
    if (statusCode == 200) {
      Navigator.pop(context);
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(widget.user!)['accessToken'];
      var finaldata = json.encode(data);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) {
        widget.callback();
      });
    } else {
      Navigator.pop(context);
      // print("not removed");
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    // print(widget.product);
    return Container(
      // group12KFN (1:65)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
      width: double.infinity,
      height: 130 * fem,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff315ed2)),
        borderRadius: BorderRadius.circular(20 * fem),
      ),
      child: Stack(
        children: [
          Positioned(
            // group11QXi (1:67)
            left: 99 * fem,
            top: 16 * fem,
            child: Container(
              width: 156 * fem,
              // height: 59.72 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // thinkoutsidetheboxmFn (1:68)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                    child: Text(
                      json.decode(widget.product)['title'],
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                  ),
                  Container(
                    // thinkoutsidetheboxmFn (1:68)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                    child: Text(
                      json.decode(widget.product)['category'],
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                    ),
                  ),
                  Container(
                    // artlifegoalsWcg (1:69)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                    child: Text(
                      json.decode(widget.product)['subtitle'],
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14.0545444489 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupcu6bDGC (7VHFqnGt7ERVhc2muwcu6b)
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // XGt (1:70)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2.86 * fem, 0 * fem),
                          child: Text(
                            json.decode(widget.product)['rating'].toString(),
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14.0545444489 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff777777),
                            ),
                          ),
                        ),
                        Container(
                          // vectord52 (1:71)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-N4G.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorj84 (1:72)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-45n.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorSYG (1:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.65 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-1.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                        Container(
                          // vectorYrC (1:74)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1.31 * fem),
                          width: 13.82 * fem,
                          height: 13.91 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-DjW.png',
                            width: 13.82 * fem,
                            height: 13.91 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      // thinkoutsidetheboxmFn (1:68)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 2.86 * fem),
                      child: Text(
                        json
                            .decode(widget.product)['createdAt']
                            .toString()
                            .substring(0, 10),
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 14.0545444489 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff777777),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // line15bE (1:75)
            left: 272 * fem,
            top: 15 * fem,
            child: Align(
              child: SizedBox(
                width: 1.21 * fem,
                height: 97.01 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff315ed2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group13nkY (1:76)
            left: 0 * fem,
            top: 0 * fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  272 * fem, 15 * fem, 98.79 * fem, 17.99 * fem),
              width: 372 * fem,
              height: 130 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffd1d1d1)),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                // line1HxC (1:78)
                child: SizedBox(
                  width: double.infinity,
                  height: 97.01 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffd1d1d1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group14qTv (1:79)
            left: 290 * fem,
            top: 76 * fem,
            child: GestureDetector(
              onTap: () {
                removefromwishlist(json.decode(widget.product)['id']);
              },
              child: Container(
                width: 65 * fem,
                height: 19 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff315ed2),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Center(
                  child: Text(
                    'Remove',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group15i1v (1:82)
            left: 295 * fem,
            top: 34 * fem,
            child: Container(
              width: 54.91 * fem,
              height: 25 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // SCp (1:83)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
                    child: Text(
                      json.decode(widget.product)['price'].toString(),
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20.432472229 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff315ed2),
                      ),
                    ),
                  ),
                  Container(
                    // vectorZYL (1:84)
                    width: 10.91 * fem,
                    height: 15 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-3AG.png',
                      width: 10.91 * fem,
                      height: 15 * fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // image3JPS (1:98)
            left: 16 * fem,
            top: 15 * fem,
            child: Align(
              child: SizedBox(
                width: 72 * fem,
                height: 102.19 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffffffff)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-1/images/image-3-bg.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  double baseWidth = 393;
  String? user;
  var products = <dynamic>[];
  int price = 0;
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
    });
    getitems(); // return user;
  }

  getitems() async {
    List<dynamic> products = [];
    for (var element in json.decode(user!)['wishlist']) {
      final uri = Uri.parse(
          'https://singhpublications.onrender.com/api/product/products?id=${element}');
      final headers = {'Content-Type': 'application/json'};
      Map<String, dynamic> body = {
        // 'email': emailController.text.trim(),
        // 'password': passwordController.text.trim()
      };
      String jsonBody = json.encode(body);
      final encoding = Encoding.getByName('utf-8');
      Response response = await get(
        uri,
        headers: headers,
        // body: jsonBody,
        // encoding: encoding,
      );
      int statusCode = response.statusCode;
      String responseBody = response.body;
      // print(responseBody);
      if (statusCode != 200) {
        print("error");
      } else {
        // print("success");
        products.add(responseBody);
        // print(products);
      }
    }
    // print(products);
    setState(() {
      this.products = products;
    });
  }

  @override
  void initState() {
    super.initState();
    getuser();
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.95;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // wishlistKwE (1:241)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text(
                    // wishlistCXA (1:297)
                    'Wishlist',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 26.8050193787 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff315ed2),
                    ),
                  ),
                ),
                Container(
                  // autogroupdnsuTeY (7VHCSxmAYtfQg3LKTCdnsu)
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 27 * fem, 11 * fem, 21 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Bookcomp(
                              product: products[index],
                              callback: getuser,
                              user: user,
                            );
                          },
                          itemCount: products.length,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 5.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
          child: Image.asset(
            'assets/page-1/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Search Here',
                        contentPadding:
                            EdgeInsets.only(bottom: 0.0, left: 16, right: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xff315ED2),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomnavbar(
        active: 'wishlist',
      ),
    );
  }
}
