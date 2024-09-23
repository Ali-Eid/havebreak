import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/string_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../blocs/bottom_bar_cubit/bottom_bar_cubit.dart';

class HomeView extends StatefulWidget {
  final Widget child;

  const HomeView({super.key, required this.child});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        title: BlocBuilder(
          bloc: context.read<BottomBarCubit>(),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s24),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImageAssets.logo),
                    ],
                  ),
                  SvgPicture.asset(IconAssets.notification),
                ],
              ),
            );
          },
        ),
      ),
      body: widget.child,
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(AppSizeR.s20),
              topEnd: Radius.circular(AppSizeR.s20)),
          child: const BottomAppBarWidget()),
    );
  }
}

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BlocBuilder(
      bloc: context.read<BottomBarCubit>(),
      builder: (context, state) {
        return Row(
          children: [
            BottomBarItemWidget(
              onTap: () {
                context.read<BottomBarCubit>().changeIndex(0);
                context.goNamed(context.read<BottomBarCubit>().paths[0]);
              },
              iconSrc: context.read<BottomBarCubit>().index == 0
                  ? IconAssets.home
                  : IconAssets.home,
              colorFilter: ColorFilter.mode(
                context.read<BottomBarCubit>().index == 0
                    ? ColorManager.primary
                    : ColorManager
                        .gray, // The color you want to apply to the SVG
                BlendMode.srcIn, // Ensures the color replaces the existing one
              ),
            ),
            BottomBarItemWidget(
              onTap: () {
                context.read<BottomBarCubit>().changeIndex(1);
                context.goNamed(context.read<BottomBarCubit>().paths[1]);
              },
              iconSrc: context.read<BottomBarCubit>().index == 1
                  ? IconAssets.explore
                  : IconAssets.explore,
              colorFilter: ColorFilter.mode(
                context.read<BottomBarCubit>().index == 1
                    ? ColorManager.primary
                    : ColorManager
                        .gray, // The color you want to apply to the SVG
                BlendMode.srcIn, // Ensures the color replaces the existing one
              ),
            ),
            BottomBarItemWidget(
              onTap: () {
                context.read<BottomBarCubit>().changeIndex(2);
                context.goNamed(context.read<BottomBarCubit>().paths[2]);
              },
              iconSrc: context.read<BottomBarCubit>().index == 2
                  ? IconAssets.profile
                  : IconAssets.profile,
              colorFilter: ColorFilter.mode(
                context.read<BottomBarCubit>().index == 2
                    ? ColorManager.primary
                    : ColorManager
                        .gray, // The color you want to apply to the SVG
                BlendMode.srcIn, // Ensures the color replaces the existing one
              ),
            ),
          ],
        );
      },
    ));
  }
}

class BottomBarItemWidget extends StatelessWidget {
  final String iconSrc;
  final Function()? onTap;
  final ColorFilter? colorFilter;
  const BottomBarItemWidget({
    super.key,
    required this.iconSrc,
    this.onTap,
    this.colorFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(iconSrc, colorFilter: colorFilter),
            ),
            // Text(title, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
