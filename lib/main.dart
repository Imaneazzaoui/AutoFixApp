
import 'package:demo1/auth_controller.dart';
import 'package:demo1/home_controller.dart';
import 'package:demo1/page-1/iphone-13-13-pro-24.dart';
import 'package:demo1/page-1/material-symbols-check-small.dart';
import 'package:demo1/signup_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';

// import 'package:myapp/page-1/iphone-13-13-pro-1.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-6.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-12.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-18.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-15.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-17.dart';
// import 'package:myapp/page-1/material-symbols-check-small.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-20.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-22.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-21.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-24.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-25.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-26.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-27.dart';
// import 'package:myapp/page-1/iphone-13-13-pro-28.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp().then((value)=>Get.put(SignUpController()));
await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
await Firebase.initializeApp().then((value)=>Get.put(homeController()));
runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scene11(),
    );
  }
}