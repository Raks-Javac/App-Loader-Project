import 'package:flutter/material.dart';
import 'package:loader_project/dependables.dart';
import 'package:provider/provider.dart';

import 'src/features/home/presentation/view/home_screen.dart';

const String appTitle = 'Loader App';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: appProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: appTitle),
      ),
    );
  }
}
