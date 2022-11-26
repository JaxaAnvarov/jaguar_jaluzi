import 'package:flutter/material.dart';
import 'package:jaguar_jaluzi/core/imports/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: getProportionateScreenWidth(250.0),
              height: getProportionateScreenHeight(250.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.appMainLogo,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
