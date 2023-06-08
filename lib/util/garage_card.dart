import 'package:flutter/material.dart';

class GarageCard extends StatelessWidget{
  final String garageName;
  final String garageAddress;

  GarageCard ({
    required this.garageName,
    required this.garageAddress,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
    padding: const EdgeInsets.only(left: 25.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
    child: Container(
      width: 200,
      padding: EdgeInsets.all(12),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
              ),
              Padding(
              padding : const EdgeInsets.only(top: 8.0),
              child: Text(
                garageName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
              ),
            ],
          ),
              Padding(
              padding : const EdgeInsets.only(top: 8.0),
              child: Text(
                garageAddress,
                style: TextStyle(
                  fontSize: 14,
                ),
                ),
                ),
          
        ], 
      ),
    ),
    ),
    );
  }
}