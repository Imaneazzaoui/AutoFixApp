import 'package:demo1/page-1/iphone-13-13-pro-25.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene14 extends StatelessWidget {
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
        // iphone1313pro27e8V (328:267)
        padding: EdgeInsets.fromLTRB(80*fem, 241*fem, 80*fem, 241*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/capture-dcran-2023-05-12-060302-1-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scene12(),
                    ),
                  );
              },
            child :Container(
              // autogroupcymtJyj (DTHXmrjx3W41dE3vUACYMT)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
              padding: EdgeInsets.fromLTRB(26*fem, 50*fem, 18*fem, 15*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xef02508e),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // premiumDL1 (328:274)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 38*fem),
                    child: Text(
                      'Premium',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Text(
                    // dhmonthKdw (328:277)
                    '200 DH / month',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                      decoration: TextDecoration.none,
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
                      builder: (context) => Scene12(),
                    ),
                  );
              },
            child: Container(
              // autogroupk5chEku (DTHXsc5NdAW7ZiGwAhk5cH)
              padding: EdgeInsets.fromLTRB(20*fem, 30*fem, 20*fem, 16*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xef02508e),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // subscribeforfreekjF (328:275)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 28*fem),
                    constraints: BoxConstraints (
                      maxWidth: 159*fem,
                    ),
                    child: Text(
                      'Subscribe for free',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                    // month2Rs (328:276)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                    child: Text(
                      '1 month',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
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