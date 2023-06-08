import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GarageDetailsScreen extends StatelessWidget {
  final String garageName;
  final String phoneNumber;
  final String address;

  const GarageDetailsScreen({
    required this.garageName,
    required this.phoneNumber,
    required this.address, required BuildContext context,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(garageName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Garage Name: $garageName',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              // Call the phone number
              
            },
            icon: Icon(Icons.phone),
            label: Text('Call'),
          ),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to the map using the address
              _openMap();
            },
            icon: Icon(Icons.map),
            label: Text('View on Map'),
          ),
        ],
      ),
    );
  }

  

  void _openMap() {
    // Navigate to the map using the address
    // Implement your logic to open a map using the address
    // You can use packages like google_maps_flutter or url_launcher to achieve this.
  }
}

        