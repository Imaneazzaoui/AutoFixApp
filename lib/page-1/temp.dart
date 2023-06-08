
import 'package:demo1/page-1/garage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:ui';

class FirestoreDataList extends StatefulWidget {
  @override
  _FirestoreDataListState createState() => _FirestoreDataListState();
}

class _FirestoreDataListState extends State<FirestoreDataList> {
  late Stream<QuerySnapshot> garageStream;
  late List<QueryDocumentSnapshot> documents;
  late Stream<QuerySnapshot> garage2;
  late List<QueryDocumentSnapshot> documents2;

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    garageStream = FirebaseFirestore.instance.collection('users').snapshots();
    garage2 = FirebaseFirestore.instance.collection('rating').snapshots();
  }

  void searchGarages(String query) {
    setState(() {
      garageStream = FirebaseFirestore.instance
          .collection('users')
          .where('garageName', isGreaterThanOrEqualTo: query)
          .where('garageName', isLessThanOrEqualTo: query + '\uf8ff')
          .snapshots();
    });
  }

 
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      body: Column(
        children: [
          Container(
      margin: EdgeInsets.only(top: 20, left: 16),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(width: 20), 
          Container(
            margin: EdgeInsets.only(top: 55,left: 20), // Specify the top margin value here
            child: Text(
              'Available garages',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff02508e),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
          
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              onChanged: searchGarages,
              decoration: InputDecoration(
                hintText: 'Search by garage name',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: garageStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }

                if (snapshot.hasData) {
                  documents = snapshot.data!.docs;

                  if (documents.isEmpty) {
                    return Center(
                      child: Text('No garages found.'),
                    );
                  }

                  return ListView.builder(
                    itemCount: documents.length,
                    itemBuilder: (context, index) {
                      final document = documents[index].data() as Map<String, dynamic>;
                      return GestureDetector(
                      onTap: () {
                        /*Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Scene3(
                        garageName: document['garageName'] ?? '', 
                        garageAddress: document['garageAddress'] ?? '', 
                        phoneNumber : document['phoneNumber'] ?? '',
                        ),
                        ),
                        );*/

                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => 
                        garagehome(garageName: document['garageName'] ?? '',garageAddress: document['garageAddress'] ?? '',phoneNumber: document['phoneNumber'] ?? '',),
                        
                        /*Scene3(
                        garageName: document['garageName'] ?? '', 
                        garageAddress: document['garageAddress'] ?? '', 
                        phoneNumber : document['phoneNumber'] ?? '',
                        ),*/
                        ),
                        );
                       
                        
                      },
                      child: Container(
                        width: 300,
                        height: 150,
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color.fromARGB(255, 222, 228, 233),
                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(16),
                            title: Text(
                              document['garageName'] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            subtitle: Text(
                              document['garageAddress'] ?? '',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                            // Add other data fields as needed
                          ),
                        ),
                      ),
                      );
                    },
                  );
                }

                return Center(
                  child: Text('No data available'),
                );
              },
            ),
          ),
           
        ],
      ),
    );
  }
}