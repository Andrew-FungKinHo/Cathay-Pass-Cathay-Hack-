import 'package:flutter/material.dart';
import 'package:recipe_app/size_config.dart';

class NotificationsPopUp extends StatelessWidget {
  const NotificationsPopUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.8,
      height: SizeConfig.screenHeight*0.8,
      color: Colors.white.withOpacity(0.8),
    );
  }
}
