import 'package:flutter/material.dart';

import '../../../core/colors/app_colors.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMBO"),
        centerTitle: true,
        backgroundColor: AppColors.appMainColor,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return  const SizedBox(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
              ),
              title: Text("NEW Collerction"),

            ),
          );
        },
      ),
    );
  }
}
