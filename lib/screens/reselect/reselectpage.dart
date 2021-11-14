import 'package:flutter/material.dart';
import 'package:recipe_app/components/custom_nav_bar.dart';
import 'package:recipe_app/components/my_bottom_nav_bar.dart';

class ReselectPage extends StatelessWidget {
  const ReselectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Text('Your original bookings', style: TextStyle(fontSize: 18),),
            SizedBox(height: 16,),

          ],
        ),
      ),
        bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
