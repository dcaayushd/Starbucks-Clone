import 'package:flutter/material.dart';
import 'package:starbucks_clone/widgets/coffee_widget.dart';
import 'package:starbucks_clone/widgets/top_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopBar(),
            Expanded(
              child: PageView(
                children: [
                  CoffeeWidget(
                    title: "Choco Coffee",
                    price: "6",
                    img: "assets/images/cupChoco.png",
                    bg: "assets/images/bgChoco.jpeg",
                    color: Colors.brown.shade700,
                    desc:
                        "Indulge in the rich embrace of Starbucks's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes. ",
                  ),
                  CoffeeWidget(
                    title: "Green Coffee",
                    price: "9",
                    img: "assets/images/cupGreen.png",
                    bg: "assets/images/bgGreen.jpeg",
                    color: Colors.green.shade800,
                    desc:
                        "Indulge in the rich embrace of Starbucks's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes. ",
                  ),
                  CoffeeWidget(
                    title: "Black Coffee",
                    price: "4",
                    img: "assets/images/cupGreen2.png",
                    bg: "assets/images/bgGreen.jpeg",
                    color: Colors.brown.shade700,
                    desc:
                        "Indulge in the rich embrace of Starbucks's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes. ",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}