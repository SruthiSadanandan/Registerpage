import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: Color.fromARGB(255, 242, 244, 246),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'hgcvjhbjb',
                      ),
                      Image.asset("assets/images/download.jpg"),
                      
                    ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names

