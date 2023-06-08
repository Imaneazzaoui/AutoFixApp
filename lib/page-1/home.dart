import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo1/page-1/top_rated_garages.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: 200, // Specify the desired height
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

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 200, 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
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
              );
            },
          );
        },
      ),
      ),
    );
  }
}