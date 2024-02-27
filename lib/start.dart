import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chunky App Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/sign_up': (context) => SignUpPage(),
      },
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/1.login.png', // Sesuaikan dengan path gambar Anda
                width: 350,
              ),
              const SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Buy ',
                      style: TextStyle(color: Color(0xFF2D4990)),
                    ),
                    TextSpan(
                      text: 'And ',
                    ),
                    TextSpan(
                      text: 'Sell ',
                      style: TextStyle(color: Color(0xFF2D4990)),
                    ),
                    TextSpan(
                      text: 'Anything Faster With The Chunky App',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Massive discounts and offers when you shop',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2D4990), // Warna latar belakang
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50), // Adjust padding
                  ),
                  child: Text(
                    'Login', // Teks login
                    style: TextStyle(fontSize: 18, color: Colors.white), // Ganti warna teks menjadi putih
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF2D4990)), // Garis tepi
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius
                            .zero), // Bentuk tombol tanpa sisi lengkung
                    padding: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50), // Adjust padding
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF2D4990)), // Ukuran teks dan warna teks
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
