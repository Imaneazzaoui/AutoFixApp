import 'package:comment_box/comment/comment.dart';
import 'package:demo1/page-1/iphone-13-13-pro-18.dart';
import 'package:demo1/page-1/iphone-13-13-pro-28.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';

import '../utils.dart';

class Scene3 extends StatelessWidget {

  void launchWhatsapp({@required number, @required message}) async{
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("Cant open whatsapp");
  }
  final String garageName;
  final String garageAddress;
  final String phoneNumber;

  Scene3({required this.garageName, required this.garageAddress, required this.phoneNumber});

  

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro12MrD (136:21)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Stack(
          children: [
            Positioned(
            // rectangle36p9e (136:25)
            left:  0*fem,
            top:  0*fem,
            child: Align(
            child: SizedBox(
             width:  413*fem,
             height:  211*fem,
            child:ClipRRect(
             borderRadius:  BorderRadius.circular(10*fem),
           child: Image.asset(
                      'assets/page-1/images/rectangle-36-e77.png',
                      fit: BoxFit.cover,
                    ),
            ),
            ),
            ),
            ),
            Positioned(
              // rectangle8vH3 (274:41)
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
              // nomgarage2qs (148:2)
              left: 24*fem,
              top: 222*fem,
              child: Align(
                child: SizedBox(
                  width: 143*fem,
                  height: 30*fem,
                  child: Text(
                    garageName,
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
              // star4XGq (148:4)
              left: 311*fem,
              top: 225*fem,
              child: Align(
                child: SizedBox(
                  width: 20*fem,
                  height: 20*fem,
                  child: Image.asset(
                    'assets/page-1/images/star-4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // line7Sub (147:124)
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
              // rectangle57yPj (148:10)
              left: 120*fem,
              top: 346*fem,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 161*fem,
                  height: 44*fem,
                  child: TextButton(
                    onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) => Scene7()),);},
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
              // avisEqT (148:12)
              left:175*fem,
              top: 356*fem,
              child: Align(
                alignment: Alignment.center,
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
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle45wE5 (274:20)
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
              // rectangle46qqF (274:21)
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
              // line2wtH (274:22)
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
              // line3qCy (274:23)
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
              // itinraireMx1 (274:24)
              left: 67*fem,
              top: 285*fem,
              child: Align(
                child: SizedBox(
                  width: 106*fem,
                  height: 30*fem,
                  child: TextButton(
                  onPressed:  () { Navigator.push(context,MaterialPageRoute(builder: (context) => SimpleMapScreen(address: garageAddress)),);},
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
              // it3duX (274:25)
              left: 24*fem,
              top: 285*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/page-1/images/it-3-HpR.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // appeltelephonique3kjF (274:26)
              left: 211*fem,
              top: 284*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/page-1/images/appel-telephonique-3-M4Z.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // contacterFvu (274:27)
              left: 245.9992675781*fem,
              top: 286*fem,
              child: GestureDetector(
              onTap: () async {
                  launchWhatsapp(number:phoneNumber,message:"Hello!");
              },
              child: Align(
                child: SizedBox(
                  width: 117*fem,
                  height: 30*fem,
                  child: Text(
                    '  Contact',
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
            ),
            Positioned(
              // nAHB (281:89)
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

            /*Positioned(
              
            )*/
            
            
          ],
        ),
      ),
      
      );
  }
}

