import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TopRatedGaragesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated Garages'),
      ),
      body: FutureBuilder<List<DocumentSnapshot>>(
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
          // Display the top-rated garages
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              DocumentSnapshot garage = snapshot.data![index];
              Map<String, dynamic> garageData = garage.data() as Map<String, dynamic>;
              
              final cumulativeRating = garageData['cumulativeRating'];
              final totalRatings = garageData['totalRatings'];
              final averageRating = totalRatings > 0 ? cumulativeRating / totalRatings : 0;

              return ListTile(
                title: Text('${garage.id}'),
                subtitle: Text('Average Rating: $averageRating'),
                // Add more details as needed
              );
            },
          );
        },
      ),
    );
  }
}

Future<List<DocumentSnapshot>> getTopRatedGarages(int limit) async {
  final QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('rating')
      .orderBy('cumulativeRating', descending: true)
      .limit(limit)
      .get();

  return snapshot.docs;
}