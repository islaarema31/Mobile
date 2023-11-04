import 'package:flutter/material.dart';
import 'package:link_aja/app/widget/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan kode untuk mengarahkan ke halaman beranda setelah 5 detik
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 37, 41),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan gambar SplashScreen di sini
            Image.asset('assets/splash.jpg', fit: BoxFit.cover,), // Ganti dengan path gambar sesuai proyek Anda
            SizedBox(height: 16), // Contoh indikator loading
          ],
        ),
      ),
    );
  }
}
