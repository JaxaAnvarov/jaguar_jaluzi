import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaguar_jaluzi/core/colors/app_colors.dart';
import 'package:jaguar_jaluzi/core/constants/size_config.dart';
import 'package:jaguar_jaluzi/core/icons/app_icons.dart';
import 'package:jaguar_jaluzi/core/imports/imports.dart';
import 'package:jaguar_jaluzi/cubit/drawer_cubit/drawer_cubit.dart';
import 'package:jaguar_jaluzi/cubit/drawer_cubit/drawer_state.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key});

  String telegramLaunchUrl = "https://t.me/maximumpluss";

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
                () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.phone,
                "Buyurtma Uchun",
                AppColors.greenColor,
                () async {
                  debugPrint("ooooo");
                  final Uri url = Uri(scheme: 'tel', path: "+998935160010");
                  if (!await launchUrl(url)) throw "error";
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.telegram,
                "Telegram",
                AppColors.blueColor,
                () async {
                  if (!await launch("https://t.me/maximumpluss")) throw 'Error';
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10.0)),
              child: myListTimeMethod(
                AppIcons.instagram,
                "Instagram",
                AppColors.blackColor,
                () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10.0),
              ),
              child: myListTimeMethod(
                  AppIcons.youtube, "YouTube", AppColors.redColor, () {}),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchTelegramUrl() async {
    final Uri _url = Uri.parse("https://t.me/maximumpluss");

    if (!await launch("https://t.me/maximumpluss")) throw 'Error';
  }

  Future<void> _launchPhoneNumber() async {
    final Uri url = Uri(scheme: 'tel', path: "+998903229065");
    if (!await launchUrl(url)) throw "error";
  }

  myListTimeMethod(
      Widget leading, String title, Color color, VoidCallback onPressed) {
    return ListTile(
      onTap: onPressed,
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
