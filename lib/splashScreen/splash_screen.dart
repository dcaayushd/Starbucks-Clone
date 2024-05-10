import 'package:flutter/material.dart';
import 'package:starbucks_clone/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: "logo",
            child: Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
