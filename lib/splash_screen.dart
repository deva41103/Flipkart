import 'dart:async';
import 'package:flipkart/bottomnavpage.dart';
import 'package:flipkart/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.yellowAccent.shade200,
        child: Center(
          child: Text('FlipKart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
      )
      )
    );
  }
}