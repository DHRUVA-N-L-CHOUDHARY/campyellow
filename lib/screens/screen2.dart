import 'dart:async';
import 'package:campyellow/screens/screen3.dart';
import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 500),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 2, milliseconds: 0),
          maintainState: false,
          pageBuilder: (context, animation, secondaryAnimation) => const Screen2(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.1, -1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: const Screen3());
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
    );
  }
}
