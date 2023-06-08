import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo1/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;


  createUser(UserModel user) async{
    await _db.collection("users").add(user.toJson()).whenComplete(() => 
    Get.snackbar("Success", "Your account has been created",
    backgroundColor: Colors.green.withOpacity(0.1),
    colorText: Colors.green
    ),
    // ignore: body_might_complete_normally_catch_error
    ).catchError((error, stackTrace){
      Get.snackbar("Error", "Someting wen wrong! Try again.",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent.withOpacity(0.1),
      colorText: Colors.red);
      print(error.toString());
    });
  }

  Future<List<UserModel>> getUserDetails(String garageName) async {
    final snapshot = await _db.collection("Users").where("garageName",isEqualTo: garageName).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }

  Future<List<UserModel>> allUser() async {
    final snapshot = await _db.collection("Users").get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}
