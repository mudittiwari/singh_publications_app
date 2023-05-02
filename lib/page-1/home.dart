import 'dart:convert';
import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/product-page.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double baseWidth = 393;
  String? user;
  var products = <List<dynamic>>[];
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }
  // Login() async {
  //   showLoaderDialog(context);
  //   final uri =
  //       Uri.parse('https://singh-publication.onrender.com/api/user/login');
  //   final headers = {'Content-Type': 'application/json'};
  //   Map<String, dynamic> body = {
  //     'email': emailController.text.trim(),
  //     'password': passwordController.text.trim()
  //   };
  //   String jsonBody = json.encode(body);
  //   final encoding = Encoding.getByName('utf-8');

  //   Response response = await post(
  //     uri,
  //     headers: headers,
  //     body: jsonBody,
  //     encoding: encoding,
  //   );

  //   int statusCode = response.statusCode;
  //   String responseBody = response.body;
  //   Navigator.pop(context);
  //   if (statusCode != 200) {
  //     print("error");
  //   } else {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => OTP(
  //                 user: responseBody,
  //                 mobile: mobileController.text.trim(),
  //               )),
  //     );
  //     print("success");
  //   }
  // }
  getproducts() async {
    // print("mudit tiwari");
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/product/getproducts');
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
      var products = jsonDecode(responseBody);
      var pairs = <List<dynamic>>[];
      for (var i = 0; i < products.length; i += 2) {
        if (i + 1 < products.length) {
          pairs.add([products[i], products[i + 1]]);
        } else {
          pairs.add([products[i]]);
        }
      }
      // print(pairs);
      setState(() {
        this.products = pairs;
        return;
      });
      // print(products);
    }
  }

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
    });
    // return user;
  }

  @override
  void initState() {
    super.initState();
    getuser();
    getproducts();
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
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
      body: Builder(
        builder: (context) {
          if (products.length == 0) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Container(
                // autogroupkfqd5Ct (7VHxSwwv6cKvZLn9bJkFqD)
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 10 * fem, 10 * fem, 43 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupt4s7PjN (7VHoMxb1fFqqbEzPfhT4S7)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      padding: EdgeInsets.fromLTRB(
                          13 * fem, 15 * fem, 13 * fem, 12 * fem),
                      width: double.infinity,
                      height: 117 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        color: Color(0x7f315ed2),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/page-1/images/rectangle-3-bg.png',
                          ),
                        ),
                      ),
                      child: Center(
                        // getretail20discountonsigningup (1:454)
                        child: Text(""),
                      ),
                    ),

                    Container(
                      // bestsellerswEQ (1:422)
                      margin: EdgeInsets.fromLTRB(
                          8 * fem, 10 * fem, 0 * fem, 10 * fem),
                      child: Text(
                        'Best Sellers',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff315ed2),
                        ),
                      ),
                    ),
                    //map the products and create a text widget
                    Column(
                      children: products.map((e) {
                        if (e.length == 2) {
                          return Container(
                            // autogroup6qbhTTe (7VHoinKebyeVvTJxTj6qbH)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 11 * fem),
                            width: double.infinity,
                            height: 278 * fem,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Product(product: e[0]),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // group3Asr (1:423)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11.8 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(10.87 * fem,
                                        7 * fem, 12.33 * fem, 12.43 * fem),
                                    width: 158.2 * fem,
                                    // height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd1d1d1)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(
                                          12.076125145 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // image1SaU (1:425)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0.31 * fem, 4.9 * fem),
                                          width: 130.42 * fem,
                                          // height: 191.1 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/image-1-7Jg.png',
                                          ),
                                        ),
                                        Text(
                                          // thinkoutsidetheboxrPJ (1:426)
                                          e[0]['title'],
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 12.2032423019 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff315ed2),
                                          ),
                                        ),
                                        Container(
                                          // paperbackzEc (1:427)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 69 * fem, 2 * fem),
                                          child: Text(
                                            e[0]['category'],
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 12.2032423019 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2125 * ffem / fem,
                                              color: Color(0xff777777),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupmmcf6oS (7VHpC23GQ2piwTR9LemMCF)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 6.99 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 30.57 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogrouppqrrRap (7VHpRbUyeq6zekVppLpQRR)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    13.27 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // artlifegoalsxKr (1:428)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.57 * fem),
                                                      child: Text(
                                                        e[0]['subtitle'],
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize:
                                                              12.2032423019 *
                                                                  ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff777777),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupz63mU3J (7VHpcbAf7QK6yFGtgAZ63M)
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // cfJ (1:429)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2.11 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              e[0]['rating']
                                                                  .toString(),
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Inter',
                                                                fontSize:
                                                                    12.2032423019 *
                                                                        ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2125 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff777777),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorvvt (1:430)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-gL8.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vector3Ep (1:431)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-YTa.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorxsa (1:432)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-SPS.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorszY (1:433)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-NnU.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group2nrc (1:434)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.57 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 21.74 * fem,
                                                height: 22.44 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-2-YRE.png',
                                                  width: 21.74 * fem,
                                                  height: 22.44 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Product(
                                          product: e[1],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // group3Asr (1:423)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11.8 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(10.87 * fem,
                                        7 * fem, 12.33 * fem, 12.43 * fem),
                                    width: 158.2 * fem,
                                    // height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd1d1d1)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(
                                          12.076125145 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // image1SaU (1:425)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0.31 * fem, 4.9 * fem),
                                          width: 130.42 * fem,
                                          // height: 191.1 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/image-1-7Jg.png',
                                          ),
                                        ),
                                        Text(
                                          // thinkoutsidetheboxrPJ (1:426)
                                          e[1]['title'],
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 12.2032423019 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff315ed2),
                                          ),
                                        ),
                                        Container(
                                          // paperbackzEc (1:427)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 69 * fem, 2 * fem),
                                          child: Text(
                                            e[1]['category'],
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 12.2032423019 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2125 * ffem / fem,
                                              color: Color(0xff777777),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupmmcf6oS (7VHpC23GQ2piwTR9LemMCF)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 6.99 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 30.57 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogrouppqrrRap (7VHpRbUyeq6zekVppLpQRR)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    13.27 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // artlifegoalsxKr (1:428)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.57 * fem),
                                                      child: Text(
                                                        e[1]['subtitle'],
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize:
                                                              12.2032423019 *
                                                                  ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff777777),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupz63mU3J (7VHpcbAf7QK6yFGtgAZ63M)
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // cfJ (1:429)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2.11 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              e[1]['rating']
                                                                  .toString(),
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Inter',
                                                                fontSize:
                                                                    12.2032423019 *
                                                                        ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2125 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff777777),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorvvt (1:430)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-gL8.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vector3Ep (1:431)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-YTa.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorxsa (1:432)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-SPS.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorszY (1:433)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-NnU.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group2nrc (1:434)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.57 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 21.74 * fem,
                                                height: 22.44 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-2-YRE.png',
                                                  width: 21.74 * fem,
                                                  height: 22.44 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          print(e);
                          return Container(
                            // autogroup6qbhTTe (7VHoinKebyeVvTJxTj6qbH)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 11 * fem),
                            width: double.infinity,
                            height: 278 * fem,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Product(
                                          product: json.encode(e[0]),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // group3Asr (1:423)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 11.8 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(10.87 * fem,
                                        7 * fem, 12.33 * fem, 12.43 * fem),
                                    width: 158.2 * fem,
                                    // height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd1d1d1)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(
                                          12.076125145 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // image1SaU (1:425)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0.31 * fem, 4.9 * fem),
                                          width: 130.42 * fem,
                                          // height: 191.1 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/image-1-7Jg.png',
                                          ),
                                        ),
                                        Text(
                                          // thinkoutsidetheboxrPJ (1:426)
                                          e[0]['title'],
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 12.2032423019 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff315ed2),
                                          ),
                                        ),
                                        Container(
                                          // paperbackzEc (1:427)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 69 * fem, 2 * fem),
                                          child: Text(
                                            e[0]['category'],
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 12.2032423019 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2125 * ffem / fem,
                                              color: Color(0xff777777),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupmmcf6oS (7VHpC23GQ2piwTR9LemMCF)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 6.99 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 30.57 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogrouppqrrRap (7VHpRbUyeq6zekVppLpQRR)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    13.27 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // artlifegoalsxKr (1:428)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.57 * fem),
                                                      child: Text(
                                                        e[0]['subtitle'],
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize:
                                                              12.2032423019 *
                                                                  ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff777777),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupz63mU3J (7VHpcbAf7QK6yFGtgAZ63M)
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // cfJ (1:429)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2.11 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              e[0]['rating']
                                                                  .toString(),
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Inter',
                                                                fontSize:
                                                                    12.2032423019 *
                                                                        ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2125 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff777777),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorvvt (1:430)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-gL8.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vector3Ep (1:431)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-YTa.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorxsa (1:432)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4.91 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-SPS.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                          Container(
                                                            // vectorszY (1:433)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0.04 * fem),
                                                            width: 12 * fem,
                                                            height: 12.47 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vector-NnU.png',
                                                              width: 12 * fem,
                                                              height:
                                                                  12.47 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // group2nrc (1:434)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.57 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 21.74 * fem,
                                                height: 22.44 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-2-YRE.png',
                                                  width: 21.74 * fem,
                                                  height: 22.44 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: bottomnavbar(
        active: 'home',
      ),
    );
  }
}
