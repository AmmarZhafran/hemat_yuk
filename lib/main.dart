import 'package:flutter/material.dart';
import 'package:hemat_yuk/user/halaman_awal.dart';
import 'package:hemat_yuk/user/halaman_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF235789)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
