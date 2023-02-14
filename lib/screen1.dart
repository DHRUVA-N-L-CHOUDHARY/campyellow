import 'dart:async';

import 'package:campyellow/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Container(
            alignment: Alignment.center,
            width: 240,
            height: 240,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
            child: Text(
              "Camp Yellow",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var time = Timer(Duration(seconds: 5), () => ("lksdjfs"));
            var begin = 0.05;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var shape = BoxShape.circle;
            var offsetAnimation = animation.drive(tween);
            return ScaleTransition(
                filterQuality: FilterQuality.high,
                scale: offsetAnimation,
                child: Screen2());
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 240,
                height: 240,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
                child: Text(
                  "Camp Yellow",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
