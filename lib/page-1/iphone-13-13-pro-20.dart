import 'package:demo1/components/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import '../utils.dart';
import 'iphone-13-13-pro-21.dart';


class Scene8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    AppBar(
    leading: BackButtonWidget(),
  // Other AppBar properties
  // ...
    );
    return SingleChildScrollView(
      child: Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro20iv1 (302:139)
        padding: EdgeInsets.fromLTRB(0*fem, 73*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff02508e)),
          color: Color(0xff02508e),
          //borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // nearestmechaniclocatorzcd (311:211)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 35*fem),
              constraints: BoxConstraints (
                maxWidth: 276*fem,
              ),
              child: Text(
                'Nearest Mechanic Locator ',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125*ffem/fem,
                  color: Color(0xfffffdfd),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // autogroup1zgzsRX (DTHW7f1FHVUZLPFbCi1ZgZ)
              padding: EdgeInsets.fromLTRB(24*fem, 102*fem, 23*fem, 31*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffefefe),
                borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40 * fem),
            topRight: Radius.circular(40 * fem),
          ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autofixusesgpstechnologytodete (311:213)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 240*fem),
                    constraints: BoxConstraints (
                      maxWidth: 324*fem,
                    ),
                    child: Text(
                      'AutoFix uses GPS technology to detect your location and displays a map with markers indicating the nearby mechanics and garages.',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                    // buttonpk5 (304:146)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                    child: TextButton(
                      onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) => Scene9()));},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 49*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.83),
                            end: Alignment(0.965, 0.681),
                            colors: <Color>[Color(0xff02508e), Color(0xff007ea7)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Container(
                    // group9buF (304:148)
                   margin: EdgeInsets.fromLTRB(100*fem, 0*fem, 50*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle10wTK (304:149)
                          width: 46*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(8*fem),
                            gradient: LinearGradient (
                              begin: Alignment(-1, -0.625),
                              end: Alignment(0.935, 0.375),
                              colors: <Color>[Color(0xff02508e), Color(0xff007ea7)],
                              stops: <double>[0, 1],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40*fem,
                        ),
                        Container(
                          // ellipse1Qrh (304:150)
                          width: 8*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                            color: Color(0xffe3e3e3),
                          ),
                        ),
                        SizedBox(
                          width: 40*fem,
                        ),
                        Container(
                          // ellipse2Kyf (304:151)
                          width: 8*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                            color: Color(0xffe3e3e3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
          );

  }
}