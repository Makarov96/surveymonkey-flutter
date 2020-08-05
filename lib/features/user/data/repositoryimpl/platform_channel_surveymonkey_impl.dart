import 'package:flutter/services.dart';
import 'package:uxapp/core/const/platformsurvermonkeyconst.dart';
import 'package:uxapp/features/user/domain/repository/platform_channel_surveymonkey.dart';

class PlatformChannelSurveyMonkeyImpl extends PlatformChannelSurveyMonkey {
  @override
  Future loadSurveyMonkey() async {
    try {
      await PlatformSurverMonkeyConst.platform.invokeMethod(
          'surveyMonkey', PlatformSurverMonkeyConst.sessionSurveyMonkeyHash);
    } on PlatformException catch (e) {
      print(e.message);
    }
  }
}
