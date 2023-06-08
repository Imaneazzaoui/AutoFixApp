import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo1/page-1/current_location_screen.dart';
import 'package:demo1/page-1/garage.dart';
import 'package:demo1/page-1/iphone-13-13-pro-28.dart';
import 'package:demo1/page-1/iphone-13-13-pro-6.dart';
import 'package:demo1/page-1/temp.dart';
import 'package:demo1/page-1/top_rated_garages.dart';
import 'package:demo1/util/garage_card.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene1 extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Stack(
            children: [
              
              SingleChildScrollView(
      //width: double.infinity,
      child: Container(
      width: double.infinity,
      child: Container(
        // iphone1313pro1wFb (3:3)
        padding: EdgeInsets.fromLTRB(14*fem, 70*fem, 0*fem, 54*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(40*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              // hiletushelpyousolveyourcarprob (6:145)
              margin: EdgeInsets.fromLTRB(57*fem, 60*fem, 0*fem, 80*fem),
              constraints: BoxConstraints (
                maxWidth: 241*fem,
              ),
              child: Text(
                'Hi !\nLet us help you solve your car problems!\n',
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
              // autogroupjdjjBp9 (DTHSSBJcyNfweFVt79Jdjj)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 27*fem, 21*fem),
              width: 335*fem,
              height: 53*fem,
              decoration: BoxDecoration (
                color: Color(0xff02508e),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Center(
                child: TextButton(
                  onPressed:  () { Navigator.push(context,MaterialPageRoute(builder: (context) => const CurrentLocationScreen()),);},
                  style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                  ),
                child: Text(
                  'Choose the nearest spot',
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
          Container(
              // autogrouprazzFp1 (DTHSXve3Z383ajitogrAzZ)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 27*fem, 100*fem),
              width: 335*fem,
              height: 53*fem,
              decoration: BoxDecoration (
                color: Color(0xff02508e),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Center(
                child: TextButton(
                  onPressed:  () { Navigator.push(context,MaterialPageRoute(builder: (context) => FirestoreDataList()),);},
                  style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                  ),
                child: Text(
                  'Available garages',
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
            Container(
              // autogroupdjqsLKf (DTHSe1JFGY2stsjDCQdJqs)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 13*fem, 1*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // highlyratedgaragesURs (4:13)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 0*fem),
                    child: Text(
                      'Highly rated garages',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // viewallazh (281:99)
                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => FirestoreDataList()),);},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'View all',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5*ffem/fem,
                        color: Color(0xff02508e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        SizedBox(
        height: 10,),
        Container(
        height: 150, 
        child:FutureBuilder<List<DocumentSnapshot>>(
        future: getTopRatedGarages(5),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No garages found.'));
          }
          // Display the top-rated garages in a horizontal ListView
          return ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: snapshot.data!.length,
  itemBuilder: (context, index) {
    DocumentSnapshot garage = snapshot.data![index];
    Map<String, dynamic> garageData = garage.data() as Map<String, dynamic>;
    final cumulativeRating = garageData['cumulativeRating'];
    final totalRatings = garageData['totalRatings'];
    final averageRating = totalRatings > 0 ? cumulativeRating / totalRatings : 0;
    
    return GestureDetector(
      
      onTap: () {
        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => 
                        garagehome(garageName: garage['garageName'] ?? '',garageAddress: garage['garageAddress'] ?? '',phoneNumber: garage['phoneNumber'] ?? '',),
                        ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 200,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                garage.id,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Average Rating: $averageRating',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  },
);
        },
      ),
      ),
          ],
        ),
      ),
      ),
      ),
      Container(
  margin: EdgeInsets.fromLTRB(16*fem, 40*fem, 0*fem, 0*fem), 
  child: Positioned(
    top: 25 * fem,
    left: 16 * fem,
    child: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  ),
),
              ],
          ),
          );
  }
}