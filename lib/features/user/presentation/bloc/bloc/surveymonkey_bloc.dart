import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uxapp/features/user/data/repositoryimpl/platform_channel_surveymonkey_impl.dart';

part 'surveymonkey_event.dart';
part 'surveymonkey_state.dart';

class SurveymonkeyBloc extends Bloc<SurveymonkeyEvent, SurveymonkeyState> {
  SurveymonkeyBloc() : super(SurveymonkeyInitial());
  PlatformChannelSurveyMonkeyImpl platformChannelSurveyMonkeyImpl =
      PlatformChannelSurveyMonkeyImpl();
  @override
  Stream<SurveymonkeyState> mapEventToState(
    SurveymonkeyEvent event,
  ) async* {}
}
