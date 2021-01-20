import 'package:flutter/material.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/theme_inherited_widget.dart';
import 'package:portfolio/homepage.dart';

void main() => runApp(MyPortfolio());

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: VigneshDroid(),
    );
  }
}

class VigneshDroid extends StatelessWidget {
  const VigneshDroid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vignesh Hendrix',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: Homepage(),
    );
  }
}
