import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaguar_jaluzi/core/colors/app_colors.dart';
import 'package:jaguar_jaluzi/core/imports/imports.dart';

class AppIcons {
  static const FaIcon language =  FaIcon(
    FontAwesomeIcons.language,
    color: AppColors.greenColor,
  );

  static FaIcon phone = FaIcon(
    FontAwesomeIcons.phone,
    color: AppColors.greenColor,
    size: getProportionateScreenWidth(20.0),
  );

  static const FaIcon telegram = FaIcon(
    FontAwesomeIcons.telegram,
    color: AppColors.blueColor,
  );

  static const FaIcon instagram = FaIcon(
    FontAwesomeIcons.instagram,
    color: AppColors.blackColor,
  );

  static const FaIcon youtube = FaIcon(
    FontAwesomeIcons.youtube,
    color: AppColors.redColor,
  );
}
