import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaguar_jaluzi/core/colors/app_colors.dart';
import 'package:jaguar_jaluzi/core/constants/size_config.dart';
import 'package:jaguar_jaluzi/core/icons/app_icons.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Drawer(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10.0)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(50.0)),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.appMainColor,
                radius: getProportionateScreenWidth(25.0),
              ),
              title: Text(
                "JALUZI JAGUAR",
                style: TextStyle(
                  color: AppColors.appMainColor,
                  fontSize: getProportionateScreenWidth(20.0),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(
              color: AppColors.blackColor,
              height: getProportionateScreenWidth(2.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.language,
                "Til",
                AppColors.greenColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.phone,
                "Buyurtma Uchun",
                AppColors.greenColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.telegram,
                "Telegram",
                AppColors.blueColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.instagram,
                "Instagram",
                AppColors.blackColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10.0),
              ),
              child: myListTimeMethod(
                AppIcons.youtube,
                "YouTube",
                AppColors.redColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  myListTimeMethod(Widget leading, String title, Color color) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
