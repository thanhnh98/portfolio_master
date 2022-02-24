import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.4),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                  child: _buildBody(),
                )
            ),
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/profile.jpg",
                    fit: BoxFit.fitHeight,
                    height: double.infinity,
                  ),
                )
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [

      ],
    );
  }
}
