import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/bottomnavbar.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BillingAddress extends StatefulWidget {
  const BillingAddress({super.key});

  @override
  State<BillingAddress> createState() => _BillingAddressState();
}

class _BillingAddressState extends State<BillingAddress> {
  double baseWidth = 393;
  String? user;
  TextEditingController house = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController pincode = TextEditingController();
  Future<String> getStringFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('pubuser') ?? '';
  }

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

  getuser() async {
    String user = await getStringFromPrefs();
    setState(() {
      this.user = user;
      this.house.text = json.decode(user)['billing_address']['house'];
      this.street.text = json.decode(user)['billing_address']['street'];
      this.area.text = json.decode(user)['billing_address']['area'];
      this.city.text = json.decode(user)['billing_address']['city'];
      this.pincode.text =
          json.decode(user)['billing_address']['pincode'].toString();
      // this.firstname.text = json.decode(user)['firstname'];
      // this.lastname.text = json.decode(user)['lastname'];
      // this.email.text = json.decode(user)['email'];
    });
    print(user);
    // return user;
  }

  updateuser() async {
    showLoaderDialog(context);
    final uri = Uri.parse(
        'https://singhpublications.onrender.com/api/user/updatebillingaddress?id=${json.decode(user!)['id']}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${json.decode(user!)['accessToken']}'
    };
    Map<String, dynamic> body = {
      "house": house.text,
      "street": street.text,
      "area": area.text,
      "city": city.text,
      "pincode": int.parse(pincode.text),
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
    print(responseBody);
    if (statusCode == 200) {
      Navigator.pop(context);
      var data = json.decode(responseBody);
      // print(data['wishlist']);
      data['accessToken'] = json.decode(user!)['accessToken'];
      var finaldata = json.encode(data);
      print(finaldata);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('pubuser', finaldata).then((value) {});
    } else {
      Navigator.pop(context);
      // print("not removed");
    }
  }

  @override
  void initState() {
    super.initState();
    getuser();
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // billingaddresswEY (1:799)
            padding:
                EdgeInsets.fromLTRB(13 * fem, 28 * fem, 8 * fem, 28.35 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // shippingaddressZa8 (1:798)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 21 * fem),
                  child: Text(
                    'Billing Address',
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
                  // autogroupgdyff7N (7VJbTdmzoQLhKiVPZkgdYF)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                  width: double.infinity,
                  height: 53 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    color: Color(0x7fffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: house,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'House/Plot No.',
                          hintStyle: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogrouply9rWNt (7VJbcP2RbawNd4k9VtLY9R)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                  width: double.infinity,
                  height: 53 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    color: Color(0x7fffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: street,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Street/Landmark',
                          hintStyle: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogrouphey9m3v (7VJbk8JWzG9roTezMVHey9)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                  width: double.infinity,
                  height: 53 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    color: Color(0x7fffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: area,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Area',
                          hintStyle: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogrouprnzz1yr (7VJbrd7h84975fPSMvrnZZ)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                  width: double.infinity,
                  height: 53 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    color: Color(0x7fffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: city,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'City',
                          hintStyle: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogroupyitdtXr (7VJbyHbFpmMiYh1YDTYiTD)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
                  width: double.infinity,
                  height: 53 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    color: Color(0x7fffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: pincode,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pincode',
                          hintStyle: SafeGoogleFont(
                            'Inter',
                            fontSize: 20.1037635803 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff777777),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    updateuser();
                  },
                  child: Container(
                    // autogroupykuhWhe (7VJcE7VtLSsEABGcYJykuh)
                    margin: EdgeInsets.fromLTRB(
                        121 * fem, 0 * fem, 125 * fem, 0 * fem),
                    width: double.infinity,
                    height: 36.65 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff315ed2),
                      borderRadius: BorderRadius.circular(33.7607650757 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20.2564582825 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
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
        active: 'user',
      ),
    );
  }
}
