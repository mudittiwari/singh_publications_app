import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OTP extends StatefulWidget {
  final String user;
  final String mobile;
  OTP({super.key, required this.user, required this.mobile});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otpController = TextEditingController();
  double baseWidth = 393;

  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationId = '';
  sendcode() async {
    await auth.verifyPhoneNumber(
      phoneNumber: '+91' + widget.mobile,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          this.verificationId = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  verifycode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpController.text.trim());

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential).then((value) async {
      if (value.user != null) {
        SharedPreferences.setMockInitialValues({});
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('pubuser', widget.user).then((value) {
          print('pubuser set');
          final String? pubuser = prefs.getString('pubuser');
          print(pubuser);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Home();
          }));
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    sendcode();
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
          // otp1kk (1:826)
          height: MediaQuery.of(context).size.height,
          padding:
              EdgeInsets.fromLTRB(11 * fem, 27 * fem, 10 * fem, 78.35 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Color(0xffffffff),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      // image175XUC (1:829)
                      margin: EdgeInsets.fromLTRB(
                          11 * fem, 0 * fem, 0 * fem, 2.09 * fem),
                      width: 120 * fem,
                      height: 120 * fem,
                      child: Image.asset(
                        'assets/page-1/images/logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      // singhpublicationFQC (1:828)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 20 * fem, 1 * fem, 20 * fem),
                      child: Text(
                        'Singh Publication',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 31.6666660309 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff315ed2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      // autogrouprfcfxpQ (7VJeKZ1Y5VrXE7VJXdRfcf)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
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
                            controller: otpController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter OTP',
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
                        verifycode();
                      },
                      child: Container(
                        // autogroupycsvDkL (7VJeRJLxfAJdAbiKEAyCsV)
                        margin: EdgeInsets.fromLTRB(
                            123 * fem, 0 * fem, 123 * fem, 0 * fem),
                        width: double.infinity,
                        height: 36.65 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff315ed2),
                          borderRadius:
                              BorderRadius.circular(33.7607650757 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Verify',
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
