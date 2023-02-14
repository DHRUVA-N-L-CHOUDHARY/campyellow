import 'package:campyellow/utils/size_config.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
      final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Camp Yellow",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                "practice. learn. compete.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400),
              ),
              Image.asset("lib/assets/img1.png"),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:screenWidth/15),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "search events by area",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 20.0,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
              SizedBox(
                height: screenHeight/15,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenHeight/12, vertical: screenWidth/ 80),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontFamily: "Inter" ,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
