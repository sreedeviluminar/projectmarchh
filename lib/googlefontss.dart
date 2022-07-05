import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: CustomFontss()));
}

class CustomFontss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'My Google Font Demo',
              style: GoogleFonts.cagliostro(fontSize: 30),
            ),
            const SizedBox(height: 30),
            Container(
              height: 150,
              width: 180,
              child: const Text(
                "My Custom Font Demo",
                style: TextStyle(fontFamily: 'Roboto-Italic'),
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.green,
                  Colors.white,
                  Colors.yellow,
                ],
                begin: Alignment.centerLeft,
                end:Alignment.centerRight
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
