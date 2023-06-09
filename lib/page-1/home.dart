// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:ffi';
// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/About.dart';
import 'package:myapp/page-1/Contact.dart';
import 'package:myapp/page-1/Resetpassword.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/page-1/cart.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/product-page.dart';
import 'package:myapp/page-1/registration.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookComp extends StatelessWidget {
  final dynamic prod;
  String? user;
  Function callback;
  BookComp({required this.prod, this.user, required this.callback});
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

  showMessageDialog(BuildContext context, String message) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          Container(margin: EdgeInsets.only(left: 7), child: Text(message)),
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

  addtowishlist(BuildContext context) async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/addtowishlist?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "product_id": json.decode(prod)['id'],
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
    Navigator.pop(context);
    print(responseBody);
    if (responseBody == '"product already in wishlist"') {
      showMessageDialog(context, "Product already in wishlist");
      // showmessage(context, "Product already in wishlist");
    } else if (statusCode != 200) {
      showMessageDialog(context, "Error");
      // showmessage(context, "error");
    } else {
      print("success");
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(user!)['accessToken'];
      var finaldata = json.encode(data);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) async {
        showMessageDialog(context, "Product added to wishlist");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF777777), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          width: MediaQuery.of(context).size.width * 0.45,
          height: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Product(
                        product: prod,
                      );
                    },
                  ));
                },
                child: Image.network(
                  json.decode(prod)['image_url'],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  json.decode(prod)['title'],
                  style: TextStyle(
                      color: Color(0xFF315ED2),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  json.decode(prod)['category'],
                  style: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  json.decode(prod)['subtitle'],
                  style: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Row(
                  children: [
                    Text(
                      json.decode(prod)['rating'].toString(),
                      style: TextStyle(
                          color: Color(0xFF777777),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 2),
                    Image.asset('assets/page-1/images/star.png', width: 20),
                    Image.asset('assets/page-1/images/star.png', width: 20),
                    Image.asset('assets/page-1/images/star.png', width: 20),
                    Image.asset('assets/page-1/images/star.png', width: 20),
                    Image.asset('assets/page-1/images/star.png', width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        user != ""
            ? Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    addtowishlist(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, right: 16),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/page-1/images/save.png"),
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ))
            : Container(),
      ],
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double baseWidth = 393;
  String? user;
  var products = [];
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

  getproducts() async {
    // print("mudit tiwari");
    final uri = Uri.parse(
        'http://singhpublications.onrender.com/api/product/getproducts');
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
      print(products[0]);
      setState(() {
        this.products = products;
        return;
      });
      // print(products);
    }
  }

  getuser() async {
    String user = await getStringFromPrefs();
    print(user);
    setState(() {
      this.user = user;
    });
    // return user;
  }

  showmessage(BuildContext context, String message) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          Container(margin: EdgeInsets.only(left: 7), child: Text(message)),
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
        iconTheme: IconThemeData(color: Color(0xff315ED2)),
        // leading: Icon(Icons.menu, color: Color(0xff315ED2)),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 5.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image(image: AssetImage('assets/page-1/images/logo.png')),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.symmetric(vertical: 50),
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Contact();
              }));
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
          user != ""
              ? ListTile(
                  title: const Text('Reset Password'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Resetpassword();
                    }));
                  },
                )
              : Text(""),
          user == ""
              ? Container(
                  height: MediaQuery.of(context).size.height * 1.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 28,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signup();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF315ED2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 28,
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Text("")
        ],
      )),
      body: Builder(
        builder: (context) {
          if (products.length == 0) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupt4s7PjN (7VHoMxb1fFqqbEzPfhT4S7)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 15 * fem, 13 * fem, 12 * fem),
                    width: double.infinity,
                    height: 175,

                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 200.0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          // autoPlayInterval: Duration(seconds: 2),
                          autoPlayInterval: Duration(seconds: 6),
                          autoPlayCurve: Curves.easeInOutQuart,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 1500),
                          autoPlay: true),
                      items: [
                        "homepagebg.png",
                        "homepagebg2.png",
                        "homepagebg3.png"
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return GestureDetector(
                              onTap: () {
                                if (i == "homepagebg.png" ||
                                    i == "homepagebg2.png") {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Product(
                                        product: json.encode(products[0]));
                                  }));
                                } else if (i == "homepagebg3.png" &&
                                    user == "") {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Login();
                                  }));
                                } else if (i == "homepagebg3.png" &&
                                    user != '') {
                                  showmessage(
                                      context, "You are already logged in");
                                }
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                                  decoration: BoxDecoration(

                                      // color: Colors.pink,
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image(
                                      image:
                                          AssetImage("assets/page-1/images/$i"),
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          child: Image.asset('assets/page-1/images/author.png',
                              fit: BoxFit.contain),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. (Prof) Sher Singh Morodiya',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFF315ED2),
                                ),
                              ),
                              Text(
                                'Director & Author (Singh Publication)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF315ED2),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Dr. (Prof.) Sher Singh Morodiya, received his Master of Nursing Degree from Raj Kumari Amrit Kaur College of Nursing, University of Delhi. He has got Ph.D. Degree in 2013. He started his career after General Nursing Diploma as Basic Nurse at Government dispensary in 1984 and step by step; obtained a chance to work on the post of the Officer on Special Duty to the Additional Chief Secretary (Medical & Health) along with the responsibility of Deputy Director (Nursing) i.e. highest post in Government of Rajasthan for nursing personnel. He is having 39 Years of experience in the field of nursing He has lot of confidence in area of teaching, guiding, examining/evaluating, care of clients, research and management/administrationat various levels of health care settings. He is author and translator of books. He is Editor-in-Chief and member of editorial board in seven peer reviewed/refereed journals from India and abroad. He has been presented many research papers International Conferences and four in National conferences. He has received BEST PAPER AWARD in an International Conference held in 2019. He is life time member in ten professional bodies.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //map the products and create a text widget
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Best Sellers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF315ED2),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 380),
                      itemBuilder: (context, index) {
                        final item = products[index];

                        return BookComp(
                          prod: json.encode(item),
                          user: user,
                          callback: getuser,
                        );
                      },
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 8.0),
                  //   child: Container(
                  //     width: double.infinity,
                  //     height: 170,
                  //     decoration: BoxDecoration(
                  //       color: Color(0xFF315ED2),
                  //     ),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.only(bottom: 4.0),
                  //           child: Text(
                  //             'Also Available on Playstore',
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(bottom: 4.0),
                  //           child: Text(
                  //             'Enjoy the Best collection book here',
                  //             style: TextStyle(
                  //               fontSize: 14,
                  //               fontWeight: FontWeight.normal,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(bottom: 4.0),
                  //           child: Text(
                  //             'Download Now!',
                  //             style: TextStyle(
                  //               fontSize: 14,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //         Image.asset(
                  //           'assets/page-1/images/playstore.png',
                  //           width: 150,
                  //           // height: 120,
                  //           fit: BoxFit.contain,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Testimonials',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF315ED2),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupt4s7PjN (7VHoMxb1fFqqbEzPfhT4S7)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 15 * fem, 13 * fem, 12 * fem),
                    width: double.infinity,
                    height: 476,

                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 476.0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          // autoPlayInterval: Duration(seconds: 2),
                          autoPlayInterval: Duration(seconds: 6),
                          autoPlayCurve: Curves.easeInOutQuart,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 1500),
                          autoPlay: true),
                      items: [
                        "testimonial1.JPG",
                        "testimonial2.jfif",
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            if (i == "testimonial1.JPG") {
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 476,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xFF315ED2), width: 1.0),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        child: Image.asset(
                                          'assets/page-1/images/$i',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .7,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mrs. Gulshan Roy Chowdhury",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              Text(
                                                "Ph.D. Scholar, M.N.(OBG-RAKCON-DU)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              Text(
                                                "Lecturer, College of Nursing ABVIMS & Dr. R.M.L. Hospital, New Delhi",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "VERY SYSTEMATIC AND ORGANISED CONTENTS OF EACH CHAPTER IN A COMPREHENSIVE AND EASY LANGUAGE. EXAMPLES IN THE STATISTICS CHAPTER ARE VERY RELEVANT AND EFFECTIVELY MENTIONED.",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                            if (i == "testimonial2.jfif") {
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 476,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xFF315ED2), width: 1.0),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        child: Image.asset(
                                          'assets/page-1/images/$i',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .7,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mrs. Deby Chakraborty",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              Text(
                                                "Ph.D. Scholar, M.N.(OBG-RAKCON-DU)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              Text(
                                                "Assistant Professor, Govt. College of Nursing, Agartalla (Tripura)",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: Color(0xFF315ED2),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "This book is written in a very simple language.It is easily understandable and very comprehensive.I hope that students can gain knowledge about research methodology and implement their knowledge.My best wishes to Prof Dr.Sher Singh.",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                            return Container();
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Color(0xFF315ED2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Become our retail partner',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contact(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Color(0xFF315ED2),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Join Now',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF315ED2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
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
