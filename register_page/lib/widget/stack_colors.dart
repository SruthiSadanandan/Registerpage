import 'dart:ui';

import 'package:flutter/material.dart';

class ToperStackColorWidget extends StatelessWidget {
  const ToperStackColorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: -50,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 168, 181, 235).withOpacity(0.9),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 100,
            sigmaY: 100,
          ),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}


class BottomStackColorWidget extends StatelessWidget {
  const BottomStackColorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -20,
      right: -50,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 168, 181, 235).withOpacity(0.9),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 100,
            sigmaY: 100,
          ),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
