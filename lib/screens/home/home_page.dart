import 'package:flutter/material.dart';
import 'package:jaguar_jaluzi/core/colors/app_colors.dart';
import 'package:jaguar_jaluzi/core/components/drawer/drawer_page.dart';
import 'package:jaguar_jaluzi/core/imports/imports.dart';
import 'package:jaguar_jaluzi/screens/home/view/home_view_page.dart';

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
              drawer: Drawer(
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
              body: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeViewPage(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: getProportionateScreenHeight(150.0),
                            width: getProportionateScreenWidth(150.0),
                            decoration: BoxDecoration(
                              color: Colors.cyan.shade300,
                              borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10.0),
                              ),
                            ),
                            child: Text(
                              "COMBO",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: getProportionateScreenWidth(20.0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150.0),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade300,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150.0),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade300,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10.0),
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150.0),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade300,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150.0),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade300,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10.0),
                            ),
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150.0),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade300,
                            borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
