import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_config/presentation/theme/app_theme.dart';

import '../../application/theme/theme_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (p, c) => p.theme != c.theme,
        builder: _themeBuilder,
      ),
    );
  }

  MaterialApp _themeBuilder(BuildContext context, ThemeState state) {
    return MaterialApp(
      theme: appThemeData[state.theme],
      home: const Scaffold(
        body: Center(
          child: Text(
            "Hello there 👋🏻",
          ),
        ),
      ),
    );
  }
}
