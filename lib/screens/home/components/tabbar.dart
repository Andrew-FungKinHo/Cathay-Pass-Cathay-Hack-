import 'package:flutter/material.dart';
import 'package:recipe_app/components/dayone.dart';
import 'package:recipe_app/components/daytwo.dart';
import 'package:recipe_app/constants.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Day 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Day 2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Day 3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              DayOneScreen(),
              DayTwoScreen(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
