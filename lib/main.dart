
import 'package:flutter/material.dart';
import 'package:portfolio_master/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bio @thanhnh',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: _buildRoutes()
    );
  }

  Map<String, WidgetBuilder> _buildRoutes() => {
    "/" : (context) => const HomeScreen(),
    "/info" : (context) => const HomeScreen()
  };
}