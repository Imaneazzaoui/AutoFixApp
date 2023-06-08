import 'package:demo1/page-1/iphone-13-13-pro-20.dart';
import 'package:demo1/page-1/iphone-13-13-pro-27.dart';
import 'package:demo1/page-1/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
      //width: double.infinity,
      child: Container(
        // iphone1313pro17Kp1 (256:2)
        padding: EdgeInsets.fromLTRB(74*fem, 171*fem, 86*fem, 178*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/capture-dcran-2023-05-12-060302-1-bg-ucR.png',
            ),
          ),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // areyouyNm (197:37)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 59*fem),
              child: Text(
                'Are you',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scene14(),
                    ),
                  );
              },
            child: Container(
              // autogroupxwqhUaR (DTHVqFJvP6H5T42pLWxwQH)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
              width: double.infinity,
              height: 163*fem,
              decoration: BoxDecoration (
                color: Color(0xef02508e),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Center(
                child: Text(
                  'Mechanic',
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
            ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scene8(),
                    ),
                  );
              },
            child: Container(
              // autogroupttqkACM (DTHVuQrea33D7hJ8VittqK)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
              width: double.infinity,
              height: 163*fem,
              decoration: BoxDecoration (
                color: Color(0xef02508e),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Center(
                child: Text(
                  'Client',
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
            ),
            ),
          ],
        ),
      ),
      ),
          );
  }
}