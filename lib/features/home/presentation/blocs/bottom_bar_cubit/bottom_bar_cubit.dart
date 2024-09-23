import 'package:bloc/bloc.dart';
import 'package:social_app/core/constants/assets_manager.dart';
import '../../../../../core/routers/routes_manager.dart';

class BottomBarCubit extends Cubit<int> {
  BottomBarCubit(super.initialState);

  int index = 0;

  List<String> paths = [
    RoutesNames.homeRoute,
    RoutesNames.exploreRoute,
    RoutesNames.profileRoute
  ];
  List<String> selectedAssets = [
    IconAssets.home,
    IconAssets.explore,
    IconAssets.profile,
  ];

  void changeIndex(int index) {
    this.index = index;
    emit(this.index);
  }
}
