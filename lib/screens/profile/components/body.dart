import 'package:flutter/material.dart';
import 'package:recipe_app/screens/subscription/subscriptionpage.dart';
import 'package:recipe_app/size_config.dart';

import 'info.dart';
import 'profile_menu_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Info(
            image: "assets/images/pic.png",
            name: "YouTuber Andrew",
            // email: "youtuberaf@gmail.com",
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize * 2, //20
              vertical: SizeConfig.defaultSize * 0.5, //5
            ),
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(
                SizeConfig.defaultSize * 1.6, // 16
              ),
            ),
            child: Text(
              'Luxury',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), //20
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_nav.svg",
            title: "Preferences",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Subscription Plan",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubscriptionPage(),
                ),
              );
            },
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Change Language",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
