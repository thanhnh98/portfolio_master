import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_master/asset_utils.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio @thanhnh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bio Thanhnh'),
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
          child: Image.asset(
              "bg.jpg".fromAssets(),
              fit: BoxFit.fitWidth,
            width: double.infinity,
            height: double.infinity,
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
            Flexible(
              child: _buildContent(
                  "\"Code  - Code nữa - Code mãi... Code đến chết ok. 😎 😎 😎\"",
                  fontSize: 18,
                  fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIcon(iconGithub,(){
                  _launchURL("https://github.com/thanhnh98");
                }),
                SizedBox(width: 16),
                _buildIcon(iconLinkedIn,(){
                  _launchURL("https://www.linkedin.com/in/thanh-nguyen-hoai-512616181/");
                }),
                SizedBox(width: 16),
                _buildIcon(iconChPlay,(){
                  _launchURL("https://play.google.com/store/apps/dev?id=5540559479839330036");
                }),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildIcon(String image, Function action){
    return GestureDetector(
      onTap: (){
        action.call();
      },
      child: MouseRegion(
        child: Image.asset(
          image.fromAssets(),
          width: 32,
          height: 32,
        ),
      )
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

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
