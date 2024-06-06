import 'package:flutter/material.dart';
import 'package:hemat_yuk/user/halaman_login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Tunda pindah halaman selama 3 detik
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HalamanLogin()),
      );
    });

    return HalamanAwal();
  }
}

class HalamanAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "HematYuk",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            )
          ],
        ),
      ),
    );
  }
}
