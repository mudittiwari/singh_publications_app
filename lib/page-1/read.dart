import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // readNKS (1:614)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group97H2 (1:615)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
              padding: EdgeInsets.fromLTRB(28*fem, 13*fem, 24*fem, 14*fem),
              width: double.infinity,
              height: 77*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f315ed2),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 5*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // image2jZJ (1:620)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.49*fem, 0*fem),
                    width: 47.51*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-2-7Qc.png',
                    ),
                  ),
                  Container(
                    // autogroupcjxbqcL (7VJK7gqrArYXh5FhvCCJxB)
                    padding: EdgeInsets.fromLTRB(52*fem, 11*fem, 23.02*fem, 11*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffd1d1d1)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(500*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // seachhereLZ6 (1:619)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 50*fem, 0*fem),
                          child: Text(
                            'Seach Here',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffd1d1d1),
                            ),
                          ),
                        ),
                        Container(
                          // vectorr1e (1:618)
                          width: 27.98*fem,
                          height: 28*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-nNC.png',
                            width: 27.98*fem,
                            height: 28*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupknwuyrx (7VJJLHypWmFVL55Pneknwu)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 9*fem, 6*fem),
              width: double.infinity,
              height: 525*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffd1d1d1)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // topic1gmN (1:622)
                    left: 148.8032836914*fem,
                    top: 13*fem,
                    child: Align(
                      child: SizedBox(
                        width: 79*fem,
                        height: 28*fem,
                        child: Text(
                          'Topic 1',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 22.8776435852*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // subheadingoftopic1AwS (1:623)
                    left: 99*fem,
                    top: 42.7213134766*fem,
                    child: Align(
                      child: SizedBox(
                        width: 178*fem,
                        height: 20*fem,
                        child: Text(
                          'Sub Heading of Topic 1',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16.1489238739*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line2Fhz (1:624)
                    left: 17*fem,
                    top: 69*fem,
                    child: Align(
                      child: SizedBox(
                        width: 341*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // loremipsumdolorsitametconsecte (1:626)
                    left: 10*fem,
                    top: 78*fem,
                    child: Align(
                      child: SizedBox(
                        width: 354*fem,
                        height: 413*fem,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. A sed ornare elementum orci odio mi ullamcorper velit aliquam. Feugiat in pellentesque et dui adipiscing orci fringilla faucibus. Nullam sit aenean scelerisque nunc donec urna pellentesque est nunc. Magna sollicitudin elit cursus semper porta vitae ornare magna hendrerit. Ut condimentum et pharetra eget sed. Phasellus cras varius orci lorem. Viverra tellus nisl pulvinar augue mollis bibendum cras ultrices at. Ultrices sollicitudin arcu fames ut arcu aliquet. Hendrerit tempus ut risus sed tellus nec sed fermentum. Proin faucibus id et faucibus scelerisque et molestie velit sapien. Amet turpis mattis quam ut. In faucibus diam tristique nunc nulla vel netus.\nPellentesque lacus adipiscing vestibulum arcu dui vulputate eu eu. Eleifend pulvinar amet mauris netus sollicitudin viverra. Vehicula amet porta non risus a eget odio. Mollis commodo tellus odio interdum. Mi condimentum quam placerat ut id hendrerit dui purus et.\nScelerisque bibendum odio ut quam sagittis pulvinar quis. Nunc lectus sit euismod cum libero auctor. Lectus donec ornare metus erat amet accumsan enim. Enim ac mattis varius senectus magna. Vestibulum odio laoreet ornare tincidunt in pharetra. Eu at nunc amet neque hac nunc. Consectetur enim cursus bibendum et. Sed nibh sed nulla ipsum sagittis sed cras lorem aenean. Id aliquam mauris nisl dui etiam eget tincidunt sit morbi. Sed urna non feugiat dictum nec a tempus. Massa pellentesque imperdiet gravida diam proin at at diam adipiscing. Fermentum porttitor porta viverra vivamus auctor eu quis.\nMassa mauris et venenatis ut vitae erat sapien tellus. Tincidunt amet turpis nec adipiscing quis quis a. Dignissim pellentesque et eu et ipsum convallis libero orci. Nec integer sagittis viverra ac egestas aenean mi vitae imperdiet. Euismod aenean nascetur at elit fermentum. Vulputate aliquam velit orci rutrum integer phasellus dignissim. Euismod a commodo dolor ultrices. Enim est vulputate diam quam. Sed neque posuere at ultrices dolor. Ut lacus dui porta sagittis. Egestas maecenas nisi in in bibendum tortor lorem nulla pharetra. Elit fames posuere elit pellentesque mauris viverra. Vel sed sagittis mollis amet nam erat quis convallis sit. Sem morbi lectus sit ultrices nulla id. Adipiscing quis pulvinar dictumst sed nunc tortor lorem senectus.\n',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // m7v (1:627)
                    left: 185*fem,
                    top: 507*fem,
                    child: Align(
                      child: SizedBox(
                        width: 5*fem,
                        height: 13*fem,
                        child: Text(
                          '1',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 10.0518817902*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupaz2pfUC (7VJJfx5jV4SbMWAPf4az2P)
              width: double.infinity,
              height: 525*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle41ar4 (1:628)
                    left: 9*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 375*fem,
                        height: 525*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffd1d1d1)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line46Jc (1:629)
                    left: 26*fem,
                    top: 17*fem,
                    child: Align(
                      child: SizedBox(
                        width: 341*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line5c24 (1:630)
                    left: 0*fem,
                    top: 220*fem,
                    child: Align(
                      child: SizedBox(
                        width: 341*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // loremipsumdolorsitametconsecte (1:631)
                    left: 19*fem,
                    top: 26*fem,
                    child: Align(
                      child: SizedBox(
                        width: 352*fem,
                        height: 146*fem,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. A sed ornare elementum orci odio mi ullamcorper velit aliquam. Feugiat in pellentesque et dui adipiscing orci fringilla faucibus. Nullam sit aenean scelerisque nunc donec urna pellentesque est nunc. Magna sollicitudin elit cursus semper porta vitae ornare magna hendrerit. Ut condimentum et pharetra eget sed. Phasellus cras varius orci lorem. Viverra tellus nisl pulvinar augue mollis bibendum cras ultrices at. Ultrices sollicitudin arcu fames ut arcu aliquet. Hendrerit tempus ut risus sed tellus nec sed fermentum. Proin faucibus id et faucibus scelerisque et molestie velit sapien. Amet turpis mattis quam ut. In faucibus diam tristique nunc nulla vel netus.\nPellentesque lacus adipiscing vestibulum arcu dui vulputate eu eu. Eleifend pulvinar amet mauris netus sollicitudin viverra. Vehicula amet p',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // WQG (1:632)
                    left: 155*fem,
                    top: 233*fem,
                    child: Align(
                      child: SizedBox(
                        width: 5*fem,
                        height: 13*fem,
                        child: Text(
                          '1',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 10.0518817902*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle38168 (1:633)
                    left: 0*fem,
                    top: 157*fem,
                    child: Align(
                      child: SizedBox(
                        width: 393*fem,
                        height: 77*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f315ed2),
                                offset: Offset(0*fem, -4*fem),
                                blurRadius: 5*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle39t9v (1:634)
                    left: 297*fem,
                    top: 156*fem,
                    child: Align(
                      child: SizedBox(
                        width: 98*fem,
                        height: 77*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorong (1:635)
                    left: 136*fem,
                    top: 181*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 27*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/vector-LKa.png',
                            width: 24*fem,
                            height: 27*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorvcQ (1:636)
                    left: 332*fem,
                    top: 181*fem,
                    child: Align(
                      child: SizedBox(
                        width: 27*fem,
                        height: 27*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-ahE.png',
                          width: 27*fem,
                          height: 27*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorT6Y (1:637)
                    left: 227*fem,
                    top: 181*fem,
                    child: Align(
                      child: SizedBox(
                        width: 37.01*fem,
                        height: 27*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-PbN.png',
                          width: 37.01*fem,
                          height: 27*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectoraS4 (1:638)
                    left: 32*fem,
                    top: 181*fem,
                    child: Align(
                      child: SizedBox(
                        width: 27*fem,
                        height: 27*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-9ck.png',
                          width: 27*fem,
                          height: 27*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}