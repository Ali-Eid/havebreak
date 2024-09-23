import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/themes/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        // context.read<AppBloc>().add(const AppEvent.check());
        context.goNamed(RoutesNames.homeRoute);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Hero(
        tag: "tag",
        child: Center(
          child: SvgPicture.asset(
            ImageAssets.logo,
          ),
        ),
      ),
    );
  }
}
