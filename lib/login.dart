import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false; // Menyimpan nilai checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F2E8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100), // Menambahkan jarak di sini
            Text(
              'Welcome Back !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30), // Menambahkan jarak di sini
            Text(
              'Log In to your account',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.right, // Teks akan berada di sebelah kanan
            ),
            SizedBox(height: 40),
            TextFieldContainer(
              child: TextField(
                style: TextStyle(color: Colors.black), // Mengatur warna teks menjadi hitam
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey), // Mengatur warna hint menjadi abu-abu
                ),
              ),
            ),
            SizedBox(height: 40),
            TextFieldContainer(
              child: TextField(
                style: TextStyle(color: Colors.black), // Mengatur warna teks menjadi hitam
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey), // Mengatur warna hint menjadi abu-abu
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe, // Menetapkan nilai checkbox
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value ?? false; // Memperbarui nilai checkbox
                    });
                  },
                ),
                Text('Remember Me'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgotten_password');
                  },
                  child: Text(
                    'Forgotten password?',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks menjadi biru
                      decoration: TextDecoration.underline, // Berikan garis bawah pada teks
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman successful2 saat tombol login ditekan
                Navigator.pushNamed(context, '/successful2');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF2D4990),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text('OR'),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.asset('asset/1. logo.png', width: 24, height: 24),
              label: Text(
                'Log in with your Google account',
                style: TextStyle(
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Colors.black, // Mengatur warna teks menjadi putih
                backgroundColor: Colors.white, // Mengatur warna latar belakang menjadi putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                side: BorderSide(color: Colors.white),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF2D4990),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white, // Mengatur warna latar belakang menjadi putih
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
