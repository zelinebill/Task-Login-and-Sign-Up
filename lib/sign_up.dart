import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _rememberMe = false; // Deklarasi dan inisialisasi variabel _rememberMe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F2E8), // Warna latar belakang: #D5F2E8
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Sign up for the Chunky app',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30),
            TextFieldContainer(
              hintText: 'Enter your name',
            ),
            SizedBox(height: 30),
            TextFieldContainer(
              hintText: 'Last name',
            ),
            SizedBox(height: 30),
            TextFieldContainer(
              hintText: 'Email/phone number',
            ),
            SizedBox(height: 30),
            TextFieldContainer(
              hintText: 'Password',
            ),
            SizedBox(height: 30),
            TextFieldContainer(
              hintText: 'Confirm password',
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Checkbox(
                    value: _rememberMe, // Gunakan variabel _rememberMe
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false; // Toggle nilai _rememberMe
                      });
                    },
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By clicking on ‘sign up’, you’re agreeing to the Chunky app ',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 2, // Maksimum 2 baris
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle aksi syarat dan ketentuan di sini
                              },
                              child: Text(
                                'Terms of Service',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF2D4990), // Warna latar belakang: #2D4990
                                  backgroundColor: Color(0xFFD5F2E8),
                                ),
                              ),
                            ),
                            Text(
                              ' and ',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Handle aksi kebijakan privasi di sini
                              },
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF2D4990), // Warna latar belakang: #2D4990
                                  backgroundColor: Color(0xFFD5F2E8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman successful
                Navigator.pushNamed(context, '/successful');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2D4990), // Warna latar belakang: #2D4990
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Atur warna teks menjadi putih
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String hintText;

  const TextFieldContainer({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
