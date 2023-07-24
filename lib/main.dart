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
      // Berguna agar pita merah tulisan debug menjadi hilang
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
      // Stack berguna agar isi konten bisa bertumpuk dalam satu widget
      body: Stack(
        // Children mewakili dari pada widget2 konten yang akan ditampilkan
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
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(5, 5),
                              blurRadius: 80,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
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
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(5, 5),
                            blurRadius: 80,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        height: 5,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 40,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
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
                          blurRadius: 4,
                          offset: Offset(3, 6),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        height: 4.5,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 40,
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Log in",
                      style: TextStyle(
                        height: 4.5,
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
