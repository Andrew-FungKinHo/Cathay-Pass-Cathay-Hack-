import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Expanded(
            child: Container(
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
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 135,
                        ),
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
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 135,
                        ),
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
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 135,
                        ),
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
                      child: Container(
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 135,
                        ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
