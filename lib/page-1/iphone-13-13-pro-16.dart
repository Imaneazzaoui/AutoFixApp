import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro16X9P (165:23)
        padding: EdgeInsets.fromLTRB(46*fem, 245*fem, 25*fem, 147*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(50*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/capture-1-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signinE5j (165:41)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 39*fem),
              child: Text(
                'Sign in',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 34*ffem,
                  fontWeight: FontWeight.w900,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff0e0e0e),
                ),
              ),
            ),
            Container(
              // autogroupkaldV1f (DTHRETonTHja2hJJQikaLD)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 21*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 5*fem, 26*fem, 4*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff1a1a1b)),
                color: Color(0xfffffdfd),
                borderRadius: BorderRadius.circular(50*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fullname6n9 (165:26)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, 0*fem),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText:'Tap to write',
                    hintStyle: SafeGoogleFont (
                        'Inter',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                  Container(
                    // rectangle3CKP (165:43)
                    width: 39*fem,
                    height: 41*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50*fem),
                      child: Image.asset(
                        'assets/page-1/images/rectangle-3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupwrhjJtD (DTHRSCyDTzUpguaoaSWrHj)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 26*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 6*fem, 29*fem, 12*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff161717)),
                color: Color(0xfffffdfd),
                borderRadius: BorderRadius.circular(50*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // passwordaqj (165:29)
                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 138*fem, 0*fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // fermeracle274y (165:44)
                    width: 32*fem,
                    height: 32*fem,
                    child: Image.asset(
                      'assets/page-1/images/fermer-a-cle-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup2ng5NWh (DTHRa35W98JzTiSUMb2NG5)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 8*fem),
              width: 297*fem,
              height: 44*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff02508e)),
                color: Color(0xff02508e),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 28*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // ororu (165:34)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 8*fem),
              child: Text(
                'or',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 25*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupti538PP (DTHRfXvLsQv3cxq1HVti53)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 48*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 12*fem, 29*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // google1d5F (165:36)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                    width: 32*fem,
                    height: 32*fem,
                    child: Image.asset(
                      'assets/page-1/images/google-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // continuewithgoogleXwK (165:37)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Continue with Google',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupxdc138y (DTHRoSrpq1MtzBdVzBxdC1)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // donthaveanaccountMvM (165:38)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                    child: Text(
                      'Don’t have an account?',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // signup3YH (165:39)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Sign up',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff0c8c20),
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