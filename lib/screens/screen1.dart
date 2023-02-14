// ignore_for_file: unused_local_variable, prefer_const_constructors, unused_element
import 'dart:async';
import 'package:campyellow/screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

 void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        _isExpanded = true;
      });
    });
    Timer(
      const Duration(milliseconds: 300, seconds: 2),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const Screen1(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var time = Timer(const Duration(seconds: 5), () => ("lksdjfs"));
            var begin = const Offset(0.0, -100.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: const Screen2());
          },
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2, milliseconds: 0),
            curve: Curves.easeInOut,
            alignment: Alignment.center,
            width: _isExpanded ? screenWidth : 240,
            height: _isExpanded ? screenHeight : 240,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.yellow),
            child: const Text(
              "Camp Yellow",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
