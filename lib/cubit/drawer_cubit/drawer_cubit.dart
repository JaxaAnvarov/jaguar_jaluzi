import 'package:jaguar_jaluzi/core/imports/imports.dart';
import 'package:jaguar_jaluzi/cubit/drawer_cubit/drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  String telegramUrl;
  DrawerCubit(this.telegramUrl) : super(const DrawerInitial());
}
