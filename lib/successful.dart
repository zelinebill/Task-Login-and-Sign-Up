import 'package:flutter/material.dart';

class SuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Menghilangkan AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/Vector.png', // Ubah path gambar sesuai dengan lokasi gambar Anda
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Your Sign up was successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman Start
                Navigator.pushNamed(context, '/start');
              },
              child: Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990), // Warna teks: #2D4990
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
