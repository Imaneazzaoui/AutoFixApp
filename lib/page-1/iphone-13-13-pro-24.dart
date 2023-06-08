import 'package:demo1/page-1/iphone-13-13-pro-17.dart';
import 'package:demo1/page-1/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

import '../utils.dart';


class Scene11 extends StatelessWidget {
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
        padding: EdgeInsets.fromLTRB(35 * fem, 92 * fem, 39 * fem, 290 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          
          color: Color(0xffffffff),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
              child: Text(
                'Welcome to AutoFix! \n',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 30 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff02508e),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 70 * fem),
              constraints: BoxConstraints(
                maxWidth: 237 * fem,
              ),
              child: Text(
                'Your Trusted Mobile Mechanics App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Container(
                width: 264 * fem,
                height: 264 * fem,
                child: Image.asset(
                  'assets/page-1/images/autofix-1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            SizedBox(height: 30 * fem), 
            Container(
              width: 200 * fem,
              height: 50 * fem,
              decoration: BoxDecoration(
                color: Color(0xff02508e),
                borderRadius: BorderRadius.circular(25 * fem),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Scene6()));
                },
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
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