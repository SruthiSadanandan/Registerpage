import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: const Center(child: Text('First Page')),
          ),
          Container(
            color: Colors.pink,
            child: const Center(child: Text('Second Page')),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text('Third Page')),
          ),
        ],
      ),
    );
  }
}
