import 'package:demo1/models/user_model.dart';
import 'package:demo1/repository/user_repository.dart';
import 'package:get/get.dart';

class homeController extends GetxController{
  static homeController get instance => Get.find();

  final _userRepo = Get.put(UserRepository());

  Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUser();
  }
}