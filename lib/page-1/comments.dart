import 'package:comment_box/comment/comment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<Map<String, dynamic>> getUserData() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;

  if (user != null) {
    // User is signed in, fetch user data from authentication data
    Map<String, dynamic> userData = {
      'name': user.displayName,
      'email': user.email,
      // Add other fields you want to retrieve
    };

    return userData;
  }

  // User is not signed in
  return {}; // Return an empty map or handle the case as per your app's logic
}

 

class TestMe extends StatefulWidget {
  final String garageName;

  TestMe({required this.garageName});
  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  

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

  // ...

  @override
  void initState() {
    super.initState();
    loadComments();
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
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
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
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
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
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
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
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}