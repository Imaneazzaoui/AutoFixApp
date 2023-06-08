import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene13 extends StatelessWidget {
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
        // iphone1313pro26LLm (328:263)
        padding: EdgeInsets.fromLTRB(63*fem, 216*fem, 63*fem, 257*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
              constraints: BoxConstraints (
                maxWidth: 263*fem,
              ),
              child: Text(
                'Thank you for subscribing !',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w900,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff02508e),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // autofix1WeZ (328:266)
              width: 264*fem,
              height: 264*fem,
              child: Image.asset(
                'assets/page-1/images/autofix-1-SKo.png',
                fit: BoxFit.cover,
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