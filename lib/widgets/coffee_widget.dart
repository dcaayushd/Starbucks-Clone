import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String price;
  final String img;
  final Color color;
  final String bg;
  const CoffeeWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.price,
    required this.img,
    required this.color,
    required this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Flash(
                child: Text(
                  title,
                  style: GoogleFonts.actor(
                    color: Colors.brown.shade700,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Stack(
              children: [
                // * Content
                Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          bg,
                        ),
                        fit: BoxFit.fitHeight,
                        colorFilter: ColorFilter.mode(
                            color.withOpacity(0.2), BlendMode.dstATop),
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.brown.shade800),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(children: [
                      SlideInDown(
                        child: Text(
                          title,
                          style: GoogleFonts.actor(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      FadeIn(
                        child: Text(
                          desc,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.actor(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Spin(
                          child: Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                              color: Colors.green.shade800,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(children: [
                                Text(
                                  "\$  $price.",
                                  style: GoogleFonts.actor(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "99",
                                  style: GoogleFonts.actor(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),

                // * glass
              ],
            ),
          ),
          Positioned(
            right: -120,
            bottom: -40,
            child: SizedBox(
              height: 500,
              width: 400,
              child: Bounce(
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
