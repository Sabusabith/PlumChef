import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/Assets/Images/sd.jpeg"),
                fit: BoxFit.cover)),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment(.57, .66),
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "It's okay to play with your food.",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))))
          ],
        ),
      ),
    );
  }
}