import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class SimpleMapScreen extends StatefulWidget {
  final String address;

  const SimpleMapScreen({Key? key, required this.address}) : super(key: key);

  @override
  _SimpleMapScreenState createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<LatLng>(
        future: getLocationFromAddress(widget.address),
        builder: (BuildContext context, AsyncSnapshot<LatLng> snapshot) {
          if (snapshot.hasData) {
            final LatLng initialPosition = snapshot.data!;
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: initialPosition,
                zoom: 14.0,
              ),
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<LatLng> getLocationFromAddress(String address) async {
  try {
    List<Location> locations = await locationFromAddress(address);
    if (locations.isNotEmpty) {
      double latitude = locations.first.latitude;
      double longitude = locations.first.longitude;
      return LatLng(latitude, longitude);
    }
  } catch (e) {
    print('Error: $e');
  }

  // Return a default location if the address couldn't be resolved
  return LatLng(33.9716, -6.8498);
}