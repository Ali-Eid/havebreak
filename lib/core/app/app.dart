import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/themes/theme_manager.dart';
import '../../features/home/presentation/blocs/bottom_bar_cubit/bottom_bar_cubit.dart';
import '../cache/app_preferences.dart';
import '../routers/routes_manager.dart';
import 'depndency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => instance<BottomBarCubit>(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) => ThemeProvider(
          initTheme: instance<AppPreferences>().getTheme(),
          builder: (p0, theme) => MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'Social App',
            themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            theme: theme,
            routerConfig: AppRouter.router,
          ),
        ),
      ),
    );
  }
}
