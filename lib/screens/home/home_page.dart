import 'package:flutter/material.dart';
import 'package:jaguar_jaluzi/core/colors/app_colors.dart';
import 'package:jaguar_jaluzi/core/components/drawer/drawer_page.dart';
import 'package:jaguar_jaluzi/core/imports/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaoffoldKey = GlobalKey();
    return BlocProvider(
      create: (context) => HomeCubit(scaoffoldKey: _scaoffoldKey),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (ctx, state) {},
        builder: (ctx, state) {
          if (state is HomeInitial) {
            return Scaffold(
              key: _scaoffoldKey,
              drawer: const Drawer(
                child: DrawerPage(),
              ),
              appBar: AppBar(
                centerTitle: true,
                title: const Text("Asosiy Sahifa"),
                backgroundColor: AppColors.appMainColor,
                leading: IconButton(
                  icon: const Icon(Icons.menu_outlined),
                  onPressed: () {
                    _scaoffoldKey.currentState!.openDrawer();
                    debugPrint("on tab");
                    // ctx.read<HomeCubit>().openDrawer();
                  },
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
