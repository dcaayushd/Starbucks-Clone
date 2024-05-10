import 'package:flutter/material.dart';
import 'package:starbucks_clone/splashScreen/splash_screen.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.green.shade700,
            size: 30,
          ),
          const Spacer(),
          Hero(
            tag: "logo",
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SplashScreen();
                }));
              },
              child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/images/logo.png",
                  )),
            ),
          ),
          const Spacer(),
          Icon(
            Icons.menu,
            color: Colors.green.shade700,
            size: 30,
          )
        ]),
      ),
    );
  }
}