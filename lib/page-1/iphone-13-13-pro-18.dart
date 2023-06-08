import 'package:demo1/page-1/iphone-13-13-pro-28.dart';
import 'package:demo1/page-1/iphone-13-13-pro-6.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro18jsK (274:42)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle36EZB (274:43)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 413*fem,
                  height: 211*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10*fem),
                    child: Image.asset(
                      'assets/page-1/images/rectangle-36-e77.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle8wTb (274:44)
              left: 0*fem,
              top: 179*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 665*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(40*fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // nomgarageFjB (274:45)
              left: 24*fem,
              top: 214*fem,
              child: Align(
                child: SizedBox(
                  width: 143*fem,
                  height: 30*fem,
                  child: Text(
                    'Nom Garage',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // star4MnD (274:47)
              left: 311*fem,
              top: 225*fem,
              child: Align(
                child: SizedBox(
                  width: 20*fem,
                  height: 20*fem,
                  child: Image.asset(
                    'assets/page-1/images/star-4-Zrm.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // line7U69 (274:48)
              left: 2*fem,
              top: 401*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe2dede),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line9bRf (274:78)
              left: 0*fem,
              top: 536*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe2dede),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle57hzV (274:51)
              left: 197*fem,
              top: 346*fem,
              child: Align(
                child: SizedBox(
                  width: 161*fem,
                  height: 44*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
                      color: Color(0x8e007ea7),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // avisp3X (274:53)
              left: 252*fem,
              top: 356*fem,
              child: Align(
                child: SizedBox(
                  width: 49*fem,
                  height: 30*fem,
                  child: Text(
                    'Avis',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle45Hho (274:54)
              left: 201*fem,
              top: 278*fem,
              child: Align(
                child: SizedBox(
                  width: 169*fem,
                  height: 44*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      border: Border.all(color: Color(0xff12b20f)),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle46zcD (274:55)
              left: 19*fem,
              top: 278*fem,
              child: Align(
                child: SizedBox(
                  width: 169*fem,
                  height: 44*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      border: Border.all(color: Color(0xff007ea7)),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line2WaZ (274:56)
              left: 0*fem,
              top: 267*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe2dede),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line33Kb (274:57)
              left: 2*fem,
              top: 335*fem,
              child: Align(
                child: SizedBox(
                  width: 390*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe2dede),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // itinraireNMs (274:58)
              left: 67*fem,
              top: 285*fem,
              child: Align(
                child: SizedBox(
                  width: 106*fem,
                  height: 30*fem,
                  child: TextButton(
                  onPressed:  () { Navigator.push(context,MaterialPageRoute(builder: (context) => Scene2()),);},
                  style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                  ),
                  child: Text(
                    'itinéraire',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff007ea7),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Positioned(
              // it3S6q (274:59)
              left: 24*fem,
              top: 285*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/page-1/images/it-3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // appeltelephonique3jbj (274:60)
              left: 211*fem,
              top: 284*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/page-1/images/appel-telephonique-3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // contactereyb (274:61)
              left: 245.9992675781*fem,
              top: 286*fem,
              child: Align(
                child: SizedBox(
                  width: 117*fem,
                  height: 30*fem,
                  child: Text(
                    'Contacter',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff12b20f),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle559vM (274:62)
              left: 24*fem,
              top: 422*fem,
              child: Align(
                child: SizedBox(
                  width: 346*fem,
                  height: 37*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      border: Border.all(color: Color(0xff007ea7)),
                      color: Color(0xffffffff),
                    ),
                    ),
                  ),
              ),
            ),
            Positioned(
              // donnezunavisdad (274:63)
              left: 79*fem,
              top: 425*fem,
              child : Center(
              child: Align(
                child: SizedBox(
                  width: 173*fem,
                  height: 30*fem,
                  child:  
                  Center(
                  child: Text(
                    'Donnez un avis',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  ),
                  ),
                  ),
              ),
            ),
            Positioned(
              // stylo118GV (274:64)
              left: 39*fem,
              top: 424*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/page-1/images/stylo-1-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rsumdesavis3uF (274:65)
              left: 19*fem,
              top: 495*fem,
              child: Align(
                child: SizedBox(
                  width: 175*fem,
                  height: 27*fem,
                  child: Text(
                    'Résumé des avis',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 22*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // nLtM (281:90)
              left: 344*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 19*fem,
                  height: 30*fem,
                  child: Text(
                    'N',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // star5FEd (281:93)
              left: 321*fem,
              top: 499*fem,
              child: Align(
                child: SizedBox(
                  width: 20*fem,
                  height: 20*fem,
                  child: Image.asset(
                    'assets/page-1/images/star-5.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // n957 (281:94)
              left: 354*fem,
              top: 495*fem,
              child: Align(
                child: SizedBox(
                  width: 19*fem,
                  height: 30*fem,
                  child: Text(
                    'N',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle56j3K (274:50)
              left: 23*fem,
              top: 348*fem,
              child: Align(
                child: SizedBox(
                  width: 161*fem,
                  height: 44*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(20*fem),
                        color: Color(0x4cd9d9d9),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // aperuRRw (274:52)
              left: 63*fem,
              top: 355*fem,
              child: Align(
                child: SizedBox(
                  width: 85*fem,
                  height: 30*fem,
                  child: Text(
                    'Aperçu',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}