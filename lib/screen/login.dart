import 'package:flutter/material.dart';
import 'package:uts_flutter/screen/splash_screen1.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.6, 1.0],
            colors: [
              Colors.deepOrange,
              Color.fromARGB(255, 238, 137, 107),
              Colors.deepOrange,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10),
                  Icon(Icons.nightlight_round, size: 100, color: Colors.black),
                  SizedBox(height: 10),
                  Text(
                    "Selamat Datang, Makhluk Malam!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Silakan login untuk memulai petualangan...",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),

                  SizedBox(height: 30),

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.12),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white70),
                      hintText: 'Masukkan email kamu',
                      hintStyle: TextStyle(color: Colors.white60),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white70,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.12),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white70),
                      hintText: 'Masukkan password kamu',
                      hintStyle: TextStyle(color: Colors.white60),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white70,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.white70,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen1(),
                        ),
                      );
                    },
                    child: Text('Lupa Password?'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black45,
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          //todo: login action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // Footer memakai gradient yang sama supaya terlihat menyatu dengan background
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          height: 36,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 1.0],
              colors: [Color.fromARGB(255, 238, 137, 107), Colors.deepOrange],
            ),
          ),
          child: Center(
            child: Text(
              "1123150172",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
