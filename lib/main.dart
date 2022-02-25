import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_master/asset_utils.dart';

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
          decoration: const BoxDecoration(
            color: Color(0xfffbfaff),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/profile.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 10,
            ),
            _buildTitle("@thanhnh98"),
            _buildContent("Mobile Developer (Kotlin/Java/Flutter)"),
            SizedBox(
              height: 16,
            ),
            _buildContent(
                "\"Có làm thì mới có ăn, không làm mà đòi có ăn thì ăn đầu bùi ăn shit <3\"",
                fontSize: 18,
                fontStyle: FontStyle.italic
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIcon(iconGithub),
                SizedBox(width: 16),
                _buildIcon(iconGithub),
                SizedBox(width: 16),
                _buildIcon(iconGithub),
                SizedBox(width: 16),
                _buildIcon(iconGithub)
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildIcon(String image){
    return Image.asset(
        image.fromAssets()
    );
  }

  Widget _buildTitle(String title){
    return RichText(
      text: TextSpan(
        text: title,
        style: GoogleFonts.roboto(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }

  Widget _buildContent(String content, {double fontSize = 20, FontStyle fontStyle = FontStyle.normal}){
    return RichText(
      text: TextSpan(
        text: content,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontStyle: fontStyle
        )
      ),
    );
  }
}
