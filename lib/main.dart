
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio_master/di/get_it.dart';
import 'package:portfolio_master/ui/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupBefore();
  runApp(const MyApp());
}

Future setupBefore() async {
  setup();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      name: "global-observer",
      builder: (BuildContext context) {
         return MaterialApp(
             title: 'Thanh Nguyen',
             theme: ThemeData(
               primarySwatch: Colors.blue,
             ),
             initialRoute: '/',
             routes: _buildRoutes()
         );
      },
    );
  }

  Map<String, WidgetBuilder> _buildRoutes() => {
    "/" : (context) => const HomeScreen(),
    // "/info" : (context) => const HomeScreen()
  };
}