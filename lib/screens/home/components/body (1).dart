import 'package:flutter/material.dart';
import 'package:recipe_app/models/RecipeBundel.dart';
import 'package:recipe_app/size_config.dart';

import 'categories.dart';
import 'recipe_bundel_card.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Column(
            children: <Widget>[
              Container(
                color: Color(0xffABD1CC),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.2,
                      isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        //padding: const EdgeInsets.all(5),
                      ),
                      endChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 10),
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  "Flight",
                                  style: GoogleFonts.getFont(
                                    "Bungee",
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Date: 14 Nov 2021\nTime: 08:00 - 11:00",
                              style: GoogleFonts.getFont(
                                "Bungee",
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.2,
                      //isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        //padding: const EdgeInsets.all(5),
                      ),
                      endChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 10),
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  "Hotel",
                                  style: GoogleFonts.getFont(
                                    "Bungee",
                                    color: Colors.orange[700],
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Date: 14 Nov 2021\nTime: 12:00 - 13:00",
                              style: GoogleFonts.getFont(
                                "Bungee",
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Container(height: 25),
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.2,
                      //isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        //padding: const EdgeInsets.all(5),
                      ),
                      endChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 10),
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  "Disneyland",
                                  style: GoogleFonts.getFont(
                                    "Bungee",
                                    color: Colors.red[700],
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Date: 14 Nov 2021\nTime: 14:00 - 20:00",
                              style: GoogleFonts.getFont(
                                "Bungee",
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Container(height: 25),
                          ],
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.2,
                      isLast: true,
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        //padding: const EdgeInsets.all(5),
                      ),
                      endChild: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 10),
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  "Htoel",
                                  style: GoogleFonts.getFont(
                                    "Bungee",
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Date: 14 Nov 2021\nTime: 21:00 - 00:00",
                              style: GoogleFonts.getFont(
                                "Bungee",
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Container(height: 25),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
