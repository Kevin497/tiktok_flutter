import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_flutter/constants.dart';
import 'package:tiktok_flutter/controllers/auth_controller.dart';
import 'package:tiktok_flutter/views/screens/auth/login_screen.dart';
import 'package:tiktok_flutter/views/screens/auth/signup_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'TikTok-Flutter',
    options: FirebaseOptions(
      apiKey: "AIzaSyDpZ6ZvSg-D74-mhtr8JRcYuXbvgxWO3c0",
      appId: "1:833184197896:android:0bfc586bd0292d982390bd",
      messagingSenderId: "833184197896",
      projectId: "tiktok-flutter-ab5a0",
      storageBucket: "gs://tiktok-flutter-ab5a0.appspot.com",
    ),
  ).then((value) {
    Get.put(
      AuthController(),
    );
  });
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
