import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/Assets/Images/cf.jpeg"),
                fit: BoxFit.cover)),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment(.57, .65),
                    child: Container(margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                      "Chefs don't make mistakes; they make new dishes.",
                      style: GoogleFonts.raleway(
                          color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))))
          ],
        ),
      ),
    );
  }
}
