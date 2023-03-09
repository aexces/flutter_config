import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_config/presentation/theme/app_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ThemeEvent>((event, emit) async {
      await event.map(
        themeChanged: (e) async {
          emit(ThemeState(e.theme));
        },
      );
    });
  }
}
