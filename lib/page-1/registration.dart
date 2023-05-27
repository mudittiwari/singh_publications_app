// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/otp.dart';
import 'package:myapp/utils.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  double baseWidth = 393;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _selectedGender = "";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    print(picked);
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      });
    }
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

  showMessageDialog(BuildContext context, String message) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 0),
              child: Text(
                message,
                style: TextStyle(fontSize: 14),
              )),
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

  bool isPasswordAlphanumeric(String password) {
    final alphanumericRegex = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])');
    return alphanumericRegex.hasMatch(password);
  }

  Signup() async {
    if (firstnameController.text.toString().trim().isEmpty) {
      showMessageDialog(context, "Please enter first name");
      return;
    }
    if (lastnameController.text.toString().trim().isEmpty) {
      showMessageDialog(context, "Please enter last name");
      return;
    }
    if (emailController.text.toString().trim().isEmpty) {
      showMessageDialog(context, "Please enter email");
      return;
    }
    if (!emailController.text.contains('@') ||
        !emailController.text.contains('.')) {
      showMessageDialog(context, "Please enter a valid email");
      return;
    }
    if (_selectedGender.isEmpty) {
      showMessageDialog(context, "Please select your gender");
      return;
    }

    if (_dateController.text.toString().trim().isEmpty) {
      showMessageDialog(context, "DOB is required");
      return;
    }

    if (mobileController.text.toString().trim().length != 10) {
      showMessageDialog(context, "Invalid mobile number");
      return;
    }
    if (passwordController.text.toString().trim().length < 8) {
      showMessageDialog(context, "Password length must be 8");
      return;
    }
    if (!isPasswordAlphanumeric(passwordController.text.toString().trim())) {
      showMessageDialog(context, "Password must be alphanumeric");
      return;
    }

    showLoaderDialog(context);
    final uri =
        Uri.parse('https://singhpublications.onrender.com/api/user/register');
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {
      'firstname': firstnameController.text.trim(),
      'lastname': lastnameController.text.trim(),
      'email': emailController.text.trim(),
      'gender': _selectedGender,
      'dob': _dateController.text.trim(),
      'mobile': mobileController.text.trim(),
      'password': passwordController.text.trim(),
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
    // print(statusCode);
    Navigator.pop(context);
    if (statusCode != 201) {
      print("error");
    } else {
      print("success");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        body: SingleChildScrollView(
            // ignore: sized_box_for_whitespace
            child: Container(
      width: double.infinity,
      child: Container(
        // Signuppyn (1:816)
        padding: EdgeInsets.fromLTRB(11 * fem, 27 * fem, 10 * fem, 78.35 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupsnqt9WG (7VJdojXtVDc8pK5W2qSnQT)
              margin: EdgeInsets.fromLTRB(
                  116 * fem, 49 * fem, 105 * fem, 2.09 * fem),
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Center(
                // image176GKz (1:820)
                child: SizedBox(
                  width: 400 * fem,
                  // height: 100 * fem,
                  child: Image.asset(
                    'assets/page-1/images/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff777777)),
                    borderRadius: BorderRadius.circular(5 * fem),
                  ),
                  // createanaccounthgC (1:825)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 35 * fem),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Login',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20.1037635803 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: firstnameController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name ',
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
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: lastnameController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name ',
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
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: emailController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email ',
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
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                // border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                // borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 'Male',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
            ),
            Container(
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _dateController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Date of Birth',
                      hintStyle: SafeGoogleFont(
                        'Inter',
                        fontSize: 20.1037635803 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff777777),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Icon(Icons.calendar_today),
                      ),
                    ),
                    readOnly: true,
                  ),
                ),
              ),
            ),
            Container(
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: mobileController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mobile Number ',
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
              // autogroupfx791Rz (7VJdujMtvFuHY38zW1fX79)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 19 * fem),
              width: double.infinity,
              height: 53 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff777777)),
                color: Color(0x7fffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Center(
                child: Padding(
                  // ignore: unnecessary_const
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    controller: passwordController,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password ',
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
                Signup();
              },
              child: Container(
                // autogroupytmvUKa (7VJe19NYN5tf6sahWNyTmV)
                margin:
                    EdgeInsets.fromLTRB(123 * fem, 0 * fem, 123 * fem, 0 * fem),
                width: double.infinity,
                height: 36.65 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff315ed2),
                  borderRadius: BorderRadius.circular(33.7607650757 * fem),
                ),
                child: Center(
                  child: Text(
                    'Signup',
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
    )));
  }
}
