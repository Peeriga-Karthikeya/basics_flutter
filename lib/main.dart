import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/navigation_example_screens/screenone.dart';
import 'package:basics/presentation/navigation_example_screens/screentwo.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './bottom_nav.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => ThemeService(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, ThemeService, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeService.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const BottomNav(),
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const BottomNav(),
            '/screen_one': (BuildContext context) => const ScreenOne(),
            '/screen_two': (BuildContext context) => const ScreenTwo()
          });
    });
  }
}
