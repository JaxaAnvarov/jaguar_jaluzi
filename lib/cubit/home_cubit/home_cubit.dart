import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jaguar_jaluzi/cubit/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GlobalKey<ScaffoldState> scaoffoldKey;
  HomeCubit({required this.scaoffoldKey}) : super(const HomeInitial());

  void openDrawer() {
    scaoffoldKey.currentState!.openDrawer();
  }
}
