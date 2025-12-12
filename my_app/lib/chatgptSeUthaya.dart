// ignore_for_file: file_names, deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BlurScreen(),
    );
  }
}

class BlurScreen extends StatelessWidget {
  const BlurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1️⃣ BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset("assets/images/pk.png", fit: BoxFit.cover),
          ),

          // 2️⃣ STRONG BLUR LAYER
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15, // 👈 yahan blur ko aur strong kiya
                  sigmaY: 15,
                ),
                child: Container(
                  color: Colors.black.withOpacity(
                    0,
                  ), // required but transparent
                ),
              ),
            ),
          ),

          // 3️⃣ BLACK OVERLAY (BACKGROUND DARK KARNE KE LIYE)
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              // 👈 0.5 = medium black, 0.7 = more dark, 0.9 = almost full black
            ),
          ),

          // 4️⃣ FRONT IMAGE (normal clear image)
          Center(
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white24,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/images/pk.png", fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
