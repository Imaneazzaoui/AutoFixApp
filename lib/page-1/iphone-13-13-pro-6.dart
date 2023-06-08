import 'package:demo1/page-1/iphone-13-13-pro-1.dart';
import 'package:demo1/page-1/iphone-13-13-pro-12.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import '../utils.dart';


class Scene2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
      //width: double.infinity,
      child: Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro6UDT (53:320)
        padding: EdgeInsets.fromLTRB(27*fem, 50*fem, 45*fem, 315*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // parametres2kRs (332:3)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30.25*fem),
              width: 30*fem,
              height: 30.75*fem,
              child: Image.asset(
                'assets/page-1/images/parametres-2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogroupjlt7GQD (DTHTtdstigW9Gt1iCsjLT7)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 6*fem, 30*fem),
              padding: EdgeInsets.fromLTRB(14*fem, 12*fem, 14*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0x3fd9d9d9),
                borderRadius: BorderRadius.circular(5*fem),
              ),
              child: Text(
                'Search',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 22*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // availablegaragesK7b (53:333)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 37*fem),
              child: Text(
                'Available garages',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            SizedBox(
            child: InkWell( 
              
              onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Scene1()),); 
              },
              child: Container(
              // autogroup6tjxzUd (DTHTxibRdAebM7LCSY6tjX)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 23*fem),
              padding: EdgeInsets.fromLTRB(17*fem, 64*fem, 17*fem, 14*fem),
              width: 300*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/rectangle-8-bg.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2b1b2dcf),
                    offset: Offset(0*fem, 10*fem),
                    blurRadius: 7.5*fem,
                  ),
                ],
              ),
              child: Align(
                // namegaragedescriptionT7K (53:427)
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  child: Container(
                    constraints: BoxConstraints (
                      maxWidth: 133*fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w900,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Name Garage\n',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Description',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ),
            ),
            Container(
              // autogroupv3skMru (DTHU2iUmFCBMpvhrkev3sK)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(14*fem, 64*fem, 14*fem, 14*fem),
              width: 300*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/rectangle-33-bg.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2b1b2dcf),
                    offset: Offset(0*fem, 10*fem),
                    blurRadius: 7.5*fem,
                  ),
                ],
              ),
              child: Align(
                // namegaragedescriptionQqB (53:428)
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  child: Container(
                    constraints: BoxConstraints (
                      maxWidth: 133*fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w900,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Name Garage\n',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Description',
                          ),
                        ],
                      ),
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
          );
  }
}