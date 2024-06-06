import 'package:flutter/material.dart';
import 'package:hemat_yuk/user/halaman_login.dart';

class HalamanSignUp extends StatefulWidget {
  const HalamanSignUp({super.key});

  @override
  State<HalamanSignUp> createState() => _HalamanSignUpState();
}

class _HalamanSignUpState extends State<HalamanSignUp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF5AB2FF), // Warna dari tengah ke atas
                Color(0xFF5AB2FF), // Warna tengah
                Color(0xFF1B98E5), // Warna dari tengah ke bawah
              ],
              stops: [0.0, 0.5, 1.0], // Mengatur titik transisi warna
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 30,
            child: Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        Positioned(
          top: 100,
          left: 30,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(90))),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: 'Username',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(90))),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    labelText: 'Email',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(90))),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    labelText: 'Password',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HalamanLogin()),
                    );
                  },
                  child: Text('Sign Up')),
            ],
          ),
        ),
      ]),
    );
  }
}
