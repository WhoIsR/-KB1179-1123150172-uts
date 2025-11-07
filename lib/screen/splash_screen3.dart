import 'package:flutter/material.dart';
import 'package:uts_flutter/screen/login.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 190,
              height: 190,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange,
                image: DecorationImage(
                  image: AssetImage("assets/images/hw1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),

            Text(
              "Happy Halloween!",
              style: TextStyle(
                fontSize: 26.0, // Ukuran besar
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Ayo mulai petualanganmu\ndan kumpulkan semuanya!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.deepOrange),
            ),

            const SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFedede9),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFedede9),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
