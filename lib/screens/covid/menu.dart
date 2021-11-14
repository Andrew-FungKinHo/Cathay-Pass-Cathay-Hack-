import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/components/custom_nav_bar.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/booking/flight.dart';
import 'package:recipe_app/size_config.dart';
import 'package:recipe_app/widgets/country_dropdown.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          // _buildYourOwnTest(screenHeight),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome Andrew!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              'You have 2 trips left in 2021!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final prevention = [
    {'assets/images/wash_hands-2.png': 'Flight'},
    {'assets/images/wash_hands-2.png': 'Hotel'},
    {'assets/images/wash_hands-2.png': 'Insurance'},
  ];

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: SizeConfig.screenWidth*0.9,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: AppColors.lightSlate, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Plan trip 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                            },
                            child: Icon(Icons.edit))
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Destination'),
                            SizedBox(height: 8,),
                            CountryDropdown(
                              countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                              country: _country,
                              onChanged: (val) => setState(() => _country = val),
                            ),
                          ],
                        ),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date'),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white, ),
                              child: Row(
                                children: [
                                  Text('13/11 - 24/11'),
                                  Container(width: 36, height: 40, child: IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.all(16),
              width: SizeConfig.screenWidth*0.9,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: AppColors.lightSlate, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Plan trip 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                            },
                            child: Icon(Icons.edit))
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Destination'),
                            SizedBox(height: 8,),
                            CountryDropdown(
                              countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                              country: _country,
                              onChanged: (val) => setState(() => _country = val),
                            ),
                          ],
                        ),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date'),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white, ),
                              child: Row(
                                children: [
                                  Text('13/11 - 24/11'),
                                  Container(width: 36, height: 40, child: IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.all(16),
              width: SizeConfig.screenWidth*0.9,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: AppColors.lightSlate, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Plan trip 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                            },
                            child: Icon(Icons.edit))
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Destination'),
                            SizedBox(height: 8,),
                            CountryDropdown(
                              countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                              country: _country,
                              onChanged: (val) => setState(() => _country = val),
                            ),
                          ],
                        ),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date'),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white, ),
                              child: Row(
                                children: [
                                  Text('13/11 - 24/11'),
                                  Container(width: 36, height: 40, child: IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        )
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: prevention
        //           .map((e) => Column(
        //                 children: <Widget>[
        //                   Image.asset(
        //                     e.keys.first,
        //                     height: screenHeight * 0.12,
        //                   ),
        //                   SizedBox(height: screenHeight * 0.015),
        //                   Text(
        //                     e.values.first,
        //                     style: const TextStyle(
        //                       fontSize: 16.0,
        //                       fontWeight: FontWeight.w500,
        //                     ),
        //                     textAlign: TextAlign.center,
        //                   )
        //                 ],
        //               ))
        //           .toList(),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  // SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
  //   return SliverToBoxAdapter(
  //     child: Container(
  //       margin: const EdgeInsets.symmetric(
  //         vertical: 10.0,
  //         horizontal: 20.0,
  //       ),
  //       padding: const EdgeInsets.all(10.0),
  //       height: screenHeight * 0.15,
  //       decoration: BoxDecoration(
  //         gradient: LinearGradient(
  //           colors: [Color(0xFFAD9FE4), Color(0xFF473F97)],
  //         ),
  //         borderRadius: BorderRadius.circular(20.0),
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: <Widget>[
  //           Image.asset('assets/images/own_test.png'),
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                 'Do your own test!',
  //                 style: const TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 18.0,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //               SizedBox(height: screenHeight * 0.01),
  //               Text(
  //                 'Follow the instructions\nto do your own test.',
  //                 style: const TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 16.0,
  //                 ),
  //                 maxLines: 2,
  //               ),
  //             ],
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
