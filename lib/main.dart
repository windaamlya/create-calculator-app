import 'package:flutter/material.dart';

void main() {
  runApp(KalkulatorApp());
}

class KalkulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KALKULATOR',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: KalkulatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KalkulatorPage extends StatelessWidget {
  Widget buildButton(String text, {Color? color, double width = 70}) {
    return Container(
      width: width,
      height: 70, // Kurangi tinggi tombol
      margin: EdgeInsets.all(4), // Kurangi margin agar tombol lebih kecil
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15), // Kurangi padding agar lebih kecil
          backgroundColor: color ?? Colors.grey[850],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white), // Kurangi font size agar lebih proporsional
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Display text placeholder
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.w300), // Kurangi font size
            ),
          ),
          SizedBox(height: 8),
          // Button rows
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton('C', color: Colors.grey[700]),
                    buildButton('+/-', color: Colors.grey[700]),
                    buildButton('%', color: Colors.grey[700]),
                    buildButton('÷', color: Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton('7'),
                    buildButton('8'),
                    buildButton('9'),
                    buildButton('×', color: Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton('4'),
                    buildButton('5'),
                    buildButton('6'),
                    buildButton('-', color: Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton('1'),
                    buildButton('2'),
                    buildButton('3'),
                    buildButton('+', color: Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton('0', width: 150), // Lebarkan tombol 0 agar menempati dua kolom
                    buildButton('.'),
                    buildButton('=', color: Colors.orange),
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