import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tenki/config/config.dart';
import 'package:tenki/view/input_page.dart';
import 'package:tenki/view/result_page.dart';

void main(List<String> args) {
  runApp(const ProviderScope(child: MyApp()));
}

// ①
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tenki',
      theme: ThemeData(
        appBarTheme: kAppBarTheme,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        inputDecorationTheme: InputDecorationTheme(
          border: kTextFieldStyle,
          focusedBorder: kTextFieldStyle,
          enabledBorder: kTextFieldStyle,
        ),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/result': ((context) => const ResultPage()),
      },
    );
  }
}
