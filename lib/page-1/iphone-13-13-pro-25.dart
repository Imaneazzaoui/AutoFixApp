import 'package:demo1/models/user_model.dart';
import 'package:demo1/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import '../utils.dart';


class Scene12 extends StatelessWidget {
  
  final cin = TextEditingController();
  final fullName = TextEditingController();
  final garageName = TextEditingController();
  final garageAddress = TextEditingController();
  final phoneNumber = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      //width: double.infinity,
      
      body: SingleChildScrollView(
      child: Column(
      children: [
          Container(
            // iphone1313pro25CC5 (328:234)
            width: double.infinity,
            height: 844*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff), 
            ),
            child: Stack(
              children: [
                Positioned(
                  // premiumphotomodernautomobileme (328:235)
                  left: 0*fem,
                  top: 0*fem,
                  child: Align(
                    child: SizedBox(
                      width: 390*fem,
                      height: 244*fem,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/page-1/images/premium-photo-modern-automobile-mechanic-composition-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // garagedetailsPGZ (328:236)
                  left: 89*fem,
                  top: 82*fem,
                  child: Align(
                    child: SizedBox(
                      width: 203*fem,
                      height: 34*fem,
                      child: Text(
                        'Garage details',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w900,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // rectangle59rR3 (328:237)
                  left: 0*fem,
                  top: 179*fem,
                  child: Align(
                    child: SizedBox(
                      width: 390*fem,
                      height: 665*fem,
                      child: Container(
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40*fem),
                topRight: Radius.circular(40*fem),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero,
              ),
                          border: Border.all(color: Color(0xffd9d9d9)),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // phonenumbervfo (328:253)
                  left: 48*fem,
                  top: 592*fem,
                  child: Align(
                    child: SizedBox(
                      width: 143*fem,
                      height: 25*fem,
                      child: Text(
                        'Phone number',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff02508e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),

                
                Positioned(
                  // garagenamepWH (328:238)
                  left: 48*fem,
                  top: 415*fem,
                  child: Align(
                    child: SizedBox(
                      width: 130*fem,
                      height: 25*fem,
                      child: Text(
                        'Garage name',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff02508e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // taptowritevZK (328:239)
                  left: 48*fem,
                  top: 455*fem,
                  child: Align(
                    child: SizedBox(
                      width: 300*fem,
                      height: 25*fem,
                      child: TextField(
                        controller: garageName,
                        decoration: InputDecoration(
                        hintText:'Tap to write',
                        hintStyle: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffd2c7c7),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                
                Positioned(
                  // fullnameLN9 (328:256)
                  left: 48*fem,
                  top: 327*fem,
                  child: Align(
                    child: SizedBox(
                      width: 94*fem,
                      height: 25*fem,
                      child: Text(
                        'Full name',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff02508e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // taptowrite3GZ (328:257)
                  left: 48*fem,
                  top: 365*fem,
                  child: Align(
                    child: SizedBox(
                      width: 300*fem,
                      height: 25*fem,
                      child: TextField(
                        controller: fullName,
                        decoration: InputDecoration(
                        hintText:'Tap to write',
                        hintStyle: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffd2c7c7),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                
                Positioned(
                  // cin4SZ (328:259)
                  left: 48*fem,
                  top: 239*fem,
                  child: Align(
                    child: SizedBox(
                      width: 36*fem,
                      height: 25*fem,
                      child: Text(
                        'CIN',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff02508e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // taptowritex29 (328:260)
                  left: 48*fem,
                  top: 277*fem,
                  child: Align(
                    child: SizedBox(
                      width: 300*fem,
                      height: 25*fem,
                      child: TextField(
                        controller: cin,
                        decoration: InputDecoration(
                        hintText:'Tap to write',
                        hintStyle: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffd2c7c7),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                
                Positioned(
                  // garageaddressA8D (328:241)
                  left: 48*fem,
                  top: 505*fem,
                  child: Align(
                    child: SizedBox(
                      width: 155*fem,
                      height: 25*fem,
                      child: Text(
                        'Garage address',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff02508e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // taptowritef4y (328:242)
                  left: 48*fem,
                  top: 545*fem,
                  child: Align(
                    child: SizedBox(
                      width: 300*fem,
                      height: 25*fem,
                      child: TextField(
                        controller: garageAddress,
                        decoration: InputDecoration(
                        hintText:'Tap to write',
                        hintStyle: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffd2c7c7),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                Positioned(
                  // taptowriteNEH (328:254)
                  left: 48*fem,
                  top: 635*fem,
                  child: Align(
                    child: SizedBox(
                      width: 300*fem,
                      height: 25*fem,
                      child: TextField(
                        controller: phoneNumber,
                        decoration: InputDecoration(
                        hintText:'Tap to write',
                        hintStyle: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffd2c7c7),
                        ),
                      ),
                    ),
                  ),
                ),
                ),
                Positioned(
                  // rectangle67FJ5 (328:252)
                  left: 131*fem,
                  top: 700*fem,
                  child : GestureDetector (
                  onTap: () {
                    final user = UserModel(
                      cin: cin.text.trim(), 
                      fullName: fullName.text.trim(),
                      garageName: garageName.text.trim(), 
                      garageAddress: garageAddress.text.trim(), 
                      phoneNumber: phoneNumber.text.trim(),);

                      SignUpController.instance.createUser(user);
                      
                    
                  },
                  child: Align(
                    child: SizedBox(
                      width: 127*fem,
                      height: 44*fem,
                      
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: Color(0xff02508e),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // approve9PT (328:251)
                  left: 151*fem,
                  top: 707*fem,
                  child: Align(
                    child: SizedBox(
                      width: 84*fem,
                      height: 25*fem,
                      child: Text(
                        'Approve',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
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