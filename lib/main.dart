// berguna agar menghilangkan garis bawah biru pada kodingan perbaris
//ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use
import 'package:flutter/material.dart';

// berfungsi menjalankan class MyApp merupakan main / fungsi utama
void main() {
  runApp(MyApp());
}

// class my app berfungsi memanggil dan menampilkan isi dari class FinancialReminder
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinancialReminder(),
    );
  }
}

// class untuk halaman depan
class FinancialReminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // berguna untuk memberi warna gradient pada latar belakang di body
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF3648EE),
                  Color(0xFF01FF41),
                ],
              ),
            ),
          ),
          // memberikan object berupa lingkaran
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF54B3E9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
          // memberikan object berupa lingkaran
          Positioned(
            bottom: -150,
            left: -150,
            child: Container(
              width: 320,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF78FA9C),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(2, 0),
                  ),
                ],
              ),
            ),
          ),
          // berguna untuk membuat text Financial menjadi berada di tengah
          Center(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: "FINANCIAL",
                        style: TextStyle(
                          height: 6.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color(0xFF43B7F9),
                                Color(0xFF43B7F9),
                                Color(0xFFA8F04C),
                              ],
                            ).createShader(
                              Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                            ),
                        ),
                      ),
                    ),
                  ),
                ),
                // berguna agar bisa mengatur posisi text secara leluasa
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 78.0,
                    ),
                    child: Text(
                      "Reminder",
                      style: TextStyle(
                        height: -1,
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // berguna agar bisa mengatur posisi text secara leluasa
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 7,
                    ),
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                        height: 16.3,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // berguna memberi jarak antara 2 konten
                SizedBox(height: 1),
                // berguna untuk membuat tombol sign up
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 1,
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF43B7F9),
                          Color(0xFFA8F04C),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // berguna agar dalam 1 widget bisa menggunakan banyak text secara kebawah
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        height: 4,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Log in",
                      style: TextStyle(
                        height: 4,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
