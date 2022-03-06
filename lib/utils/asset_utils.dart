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

class LottieFilesAsset {
  static final String android = "android.json".fromLottieFiles();
}

