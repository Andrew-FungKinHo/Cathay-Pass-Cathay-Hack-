import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_nav_bar.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

class ReselectPage extends StatelessWidget {
  const ReselectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Align(child: Text('Your original booking is delayed', style: TextStyle(fontSize: 20),), alignment: Alignment.centerLeft,),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.flight_land, color: AppColors.kTextLigntColor),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Flight",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "HKG",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimaryColor),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: AppColors.kTextLigntColor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Flex(
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                              (index) => SizedBox(
                                            height: 1,
                                            width: 3,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color:
                                                  Colors.grey.shade300),
                                            ),
                                          )),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                    );
                                  },
                                ),
                              ),
                              Center(
                                  child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport,
                                      color: AppColors.premiumEconClassColor,
                                      size: 24,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: AppColors.kTextLigntColor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "SFO",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kPrimaryColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                          width: 100,
                          child: Text(
                            "Hong Kong",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )),
                      Text(
                        "6H 30M",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: AppColors.dark),
                      ),
                      SizedBox(
                          width: 100,
                          child: Text(
                            "San Fransisco",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "08:00 AM",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.dark,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "02:30 PM",
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.dark,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "18 Nov 2021",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Flight No : ",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "CX8986",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.dark),
                          ),
                          Text(
                            " (Economy)",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              width: SizeConfig.screenWidth*0.9,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16,),
                  Icon(Icons.warning_rounded, color: Color(0xFFFD2F22),),
                  SizedBox(width: 16,),
                  Flexible(child: Text('Warning: reschedule needed' , maxLines: 4, overflow: TextOverflow.ellipsis,)),
                  SizedBox(width: 8,)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.kPrimaryColor),
              child: TextButton(child: Text('Reselect flight', style: TextStyle(color: Colors.white,),), onPressed: () {},),
            ),
            // TextButton(child: Text('or Reselect'), onPressed: () {},),
          ],
        ),
      ),
        bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
