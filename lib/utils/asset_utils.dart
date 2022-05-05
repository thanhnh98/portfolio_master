extension AssetsUtil on String {
  String fromAssets(){
    return "assets/$this";
  }

  String fromLottieFiles() {
    return "assets/$this";
  }
}

const String iconGithub = "github.png";
const String iconLinkedIn = "linkedin.png";
const String iconChPlay = "chplay.png";
const String iconAndroidPng = "android.png";
const String imgLinkedIn = "linked_in.png";

class LottieFilesAsset {
  static final String android = "android.json".fromLottieFiles();
}

