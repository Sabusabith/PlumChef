import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plum_chef/components/Images.dart';
import 'package:plum_chef/components/colors.dart';

class TrendingFoods extends StatelessWidget {
  TrendingFoods(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.ingredients,
      required this.steps});

  final String title;
  final String description;
  final String imageUrl;
  final List ingredients;
  final List<String> steps;

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: backgroundColor,
              leading: SizedBox(),
              pinned: false,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
           SliverFillRemaining(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            title,
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                            maxLines: 2,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "DISCRIPTION",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            description,
                            style: GoogleFonts.raleway(
                                color: Colors.white, fontSize: 16),
                            maxLines: 10,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "INGREDIENTS :",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        width: size.width,
                        child: RawScrollbar(
                          thickness: 2,
                          thumbColor: Colors.grey.shade500,
                          controller: scrollController,
                          child: ListView.builder(
                              controller: scrollController,
                              itemCount: ingredients.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Icon(
                                    Icons.donut_large_sharp,
                                    size: 15,
                                    color: Colors.grey.shade600,
                                  ),
                                  title: Text(
                                    ingredients[index],
                                    style: GoogleFonts.raleway(
                                        color: Colors.white),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
              
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "INSTRUCTIONS:",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        width: size.width,
                        child: ListView.builder(
                       
                            itemCount: steps.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Icon(
                                  Icons.donut_large_sharp,
                                  size: 15,
                                  color: Colors.grey.shade600,
                                ),
                                title: Text(
                                  steps[index],
                                  style: GoogleFonts.raleway(
                                      color: Colors.white),
                               textAlign: TextAlign.justify, ),
                              );
                            }),
                      ),
                    ),
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
