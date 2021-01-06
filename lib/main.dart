import 'package:flutter/material.dart';
import 'package:tgd_covid_tracker/datasource.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack,
      ),
    );
  }
}
