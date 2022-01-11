import 'package:flutter/material.dart';
import 'package:netflix_clone/feature/presentation/widgets/theme/coustom_theme.dart';

import 'feature/presentation/screens/splach_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      title: 'Netflix Clone',
      home: SplashScreen(),
    );
  }
}
