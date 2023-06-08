


import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String cin;
  final String fullName;
  final String garageName;
  final String garageAddress;
  final String phoneNumber;

  const UserModel({
    this.id,
    required this.cin,
    required this.fullName,
    required this.garageName,
    required this.garageAddress,
    required this.phoneNumber,
  });

  toJson(){
    return{
      "fullName": fullName,
      "garageName": garageName,
      "garageAddress": garageAddress,
      "phoneNumber": phoneNumber,   
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
    final data = document.data()!;
    return UserModel(
      id: document.id,
      cin: data["CIN"], 
      fullName: data["fullName"], 
      garageName: data["garageName"], 
      garageAddress: data["garageAddress"], 
      phoneNumber: data["phoneNumber"]
      );
  }
}