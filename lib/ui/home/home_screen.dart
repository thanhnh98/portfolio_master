import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_master/utils/asset_utils.dart';
import 'package:portfolio_master/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant.dart';
import '../../utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {

  AnimationController _animationController;
  AnimationController _lottieController;
  double randomPosition = (Random().nextInt(20) - 10).toDouble() / 10.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _lottieController = AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
      ..addStatusListener((status) {
        print("$status _lottieController");
        if (status == AnimationStatus.forward){
          setState(() {
            randomPosition = (Random().nextInt(20) - 10).toDouble() / 10.0;
          });
        }
      })..repeat(reverse: true);

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 450)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: CommonColor.primaryColor,
        ),
        Row(
          children: [
            Expanded(
              flex: 6,
              child: _buildTabInfo(),
            ),
            Expanded(
                flex: 4,
                child: _buildTabImage()
            )
          ],
        )
      ],
    );
  }

  String _imageSelected = null;

  Widget _buildIcon(String image, Function action){
    Color defaultColor = Colors.white.withOpacity(0.3);
    var defaultSize = 32.0;

    Color hoverColor = Colors.white.withOpacity(0.6);

    return GestureDetector(
        onTap: (){
          action.call();
        },
        child: MouseRegion(
            onEnter: (event){
              setState(() {
                _imageSelected = image;
              });
            },
            onExit: (event){
              setState(() {
                _imageSelected = null;
              });
            },
            cursor: SystemMouseCursors.click,
            child: AnimatedScale(
              duration: Duration(
                milliseconds: 100
              ),
              scale: _imageSelected == image ? 1.1 : 1.0,
              child: Container(
                decoration: BoxDecoration(
                    color: _imageSelected == image ? hoverColor : defaultColor,
                    borderRadius: BorderRadius.circular(defaultSize)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    image.fromAssets(),
                    width: defaultSize,
                    height: defaultSize,
                  ),
                ),
              ),
            )
        )
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  Widget _buildTabInfo() {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                if (_animationController.isCompleted) {
                  _animationController.reverse();
                } else {
                  _animationController.forward();
                }
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child:AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: _animationController,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextEx(
                    Constant.mine.fullname,
                    size: 52,
                    fontWeight: FontWeight.bold
                ),
                const SizedBox(
                  height: 10,
                ),
                TextEx(
                    Constant.mine.title,
                    size: 26
                ),
                const SizedBox(
                  height: 40,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(-1,0.24),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  _buildAlignAndroidLottieFile()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAlignAndroidLottieFile(){
    return Align(
      alignment: Alignment(randomPosition, -1),
      child: Lottie.asset(
        LottieFilesAsset.android,
        controller: _lottieController
      ),
    );
  }

  var imageEntered = false;
  var paddingSpace = 0;

  Widget _buildTabImage() {
    return  Padding(
      padding: const EdgeInsets.all(25),
      child: MouseRegion(
        onEnter: (event){
          setState(() {
            imageEntered = true;
          });
        },
        onExit: (event){
          setState(() {
            imageEntered = false;
          });
        },
        child: AnimatedScale(
          duration: Duration(
              milliseconds: 100
          ),
          scale: imageEntered? 1.1 : 1.0,
          child: AnimatedSwitcher(
            child: _buildImageSwitcher,
          )
        )
      )
    );
  }

  Widget _buildImageSwitcher(String imgAssets){
    return Container(
      decoration: BoxDecoration(

      ),
      child: Image.asset(
        imgLinkedIn.fromAssets(),
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    _lottieController.dispose();
  }
}
