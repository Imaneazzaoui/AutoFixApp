import 'package:demo1/models/user_model.dart';
import 'package:demo1/page-1/iphone-13-13-pro-26.dart';
import 'package:demo1/repository/user_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final userRepo = Get.put(UserRepository());

  Future<void> createUser(UserModel user) async{
      Get.to(() => Scene13());
      await userRepo.createUser(user);
      
  }
}