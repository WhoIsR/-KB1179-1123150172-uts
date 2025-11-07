import 'package:flutter/material.dart';
import 'package:uts_flutter/screen/splash_screen3.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 210,
              height: 210,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/hw2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),

            Text(
              "Jangan Takut!",
              style: TextStyle(
                fontSize: 26.0, // Ukuran besar
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Kami punya peta rahasia\nmenuju permen paling enak!",
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
                    color: Colors.deepOrange,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen3()),
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
