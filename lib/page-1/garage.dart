import 'package:comment_box/comment/comment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo1/page-1/iphone-13-13-pro-18.dart';
import 'package:demo1/page-1/iphone-13-13-pro-28.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui';

import '../utils.dart';

Future<Map<String, dynamic>> getUserData() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  if (user != null) {
    Map<String, dynamic> userData = {
      'name': user.displayName,
      'email': user.email,
    };

    return userData;
  }

  
  return {}; 
}


void launchWhatsapp({@required number, @required message}) async{
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("Cant open whatsapp");
  }

class garagehome extends StatefulWidget {
  
  final String garageName;
  final String garageAddress;
  final String phoneNumber;

  garagehome({required this.garageName, required this.garageAddress, required this.phoneNumber});
  @override
  _garagehomeState createState() => _garagehomeState();
}

class _garagehomeState extends State<garagehome> {
  double selectedRating = 0;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  
  void updateGarageRating(double rating) async {
  try {
    final DocumentSnapshot garageSnapshot = await _firestore
        .collection('rating')
        .doc(widget.garageName)
        .get();

    if (garageSnapshot.exists) {
      Map<String, dynamic> data = garageSnapshot.data() as Map<String, dynamic>;
int totalRatings = data['totalRatings'];
double cumulativeRating = data['cumulativeRating'];

      totalRatings++;
      cumulativeRating += rating;

      await _firestore.collection('rating').doc(widget.garageName).update({
        'totalRatings': totalRatings,
        'cumulativeRating': cumulativeRating,
      });
    } else {
      // Garage document does not exist, create a new one
      await _firestore.collection('rating').doc(widget.garageName).set({
        'totalRatings': 1,
        'cumulativeRating': rating,
      });
    }
  } catch (e) {
    print('Error updating garage rating: $e');
  }
}

  void loadComments() async {
    try {
      final QuerySnapshot snapshot = await _firestore
          .collection('comments')
          .where('garageName', isEqualTo: widget.garageName)
          .get();

      setState(() {
        filedata = snapshot.docs
            .map((doc) => doc.data() as Map<String, dynamic>)
            .toList();
      });
    } catch (e) {
      print('Error loading comments: $e');
    }
  }

  void saveComment(Map<String, dynamic> commentData) async {
    try {
      final Map<String, dynamic> dataWithGarageName = {
      ...commentData,
      'garageName': widget.garageName,
    };
      await _firestore.collection('comments').add(dataWithGarageName);
    } catch (e) {
      print('Error saving comment: $e');
    }
  }

    


  @override
  void initState() {
    super.initState();
    loadComments();
    loadSelectedRating();
  }

  String formattedDate = DateFormat('yyyy-MM-dd hh:mma').format(DateTime.now());
  
  

  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Chuks Okwuenu',
      'message': 'I love to code',
      'date': '2021-01-01 12:00:00'
    },
  ];

  Widget commentChild(data) {
  return Container(
    margin: EdgeInsets.only(top: 390.0), // Adjust the top margin as needed
    child: ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
          child: ListTile(
            leading: GestureDetector(
              onTap: () async {
                // Display the image in large form.
                print("Comment Clicked");
              },
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
            ),
            title: Text(
              data[i]['name'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(data[i]['message']),
            trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
          ),
        );
      },
    ),
  );
}
  

  void loadSelectedRating() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  double? rating = prefs.getDouble('selectedRating');
  if (rating != null) {
    setState(() {
      selectedRating = rating;
    });
  }
}

  void saveSelectedRating(double rating) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('selectedRating', rating);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      
      
      child:Container(
        
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
                    widget.garageName,
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
            
            Stack(
  children: [
    Positioned(
      top: 220,
      left: 220,
      child: RatingBar.builder(
        initialRating: 0,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 30.0,
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          setState(() {
            selectedRating = rating;
          });
          saveSelectedRating(rating); 
          updateGarageRating(rating);// Save the selected rating
          print(selectedRating);
        },
      ),
    ),
  ],
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
                  onPressed:  () { Navigator.push(context,MaterialPageRoute(builder: (context) => SimpleMapScreen(address: widget.garageAddress)),);},
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
                  launchWhatsapp(number:widget.phoneNumber,message:"Hello!");
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
              
          child: CommentBox(
          child: commentChild(filedata),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() //async 
              {
                //Map<String, dynamic> userData = await getUserData();
                //String name = userData.containsKey('name') ? userData['name'] : '';
                var value = {
                  'name': '', 
                  'message': commentController.text,
                  'date': formattedDate,
                };
                filedata.insert(0, value);
                saveComment(value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
              
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor:  Color(0xff02508e),
          textColor: Colors.black,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
            ),
            
            
            
          ],
        ),
      ),
      ),
      );
  }
  
  
}

