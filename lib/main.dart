import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:your_manga_uikit/bloc/loading_bloc.dart';
import 'package:your_manga_uikit/first_page.dart';
import 'package:your_manga_uikit/molecules/button/icon_button.dart';
import 'package:your_manga_uikit/molecules/button/primary_button.dart';
import 'package:your_manga_uikit/molecules/rating/rating.dart';
import 'package:your_manga_uikit/molecules/text_fields/border_text_field.dart';
import 'package:your_manga_uikit/molecules/text_fields/pin_code_field.dart';
import 'atoms/icons/svg_icons.dart';
import 'atoms/pattern/svg_patterns.dart';
import 'atoms/text/text.dart';
import 'atoms/theme/interface_fields.dart';
import 'molecules/button/button_style.dart';
import 'molecules/widget/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoadingBloc()),
        BlocProvider(create: (_) => LoadingContentBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light, extensions: [InterfaceFields.light]),
        darkTheme: ThemeData(
            brightness: Brightness.dark, extensions: [InterfaceFields.dark]),
        themeMode: ThemeMode.system,
        home: const FirstPage(),
      ),
    );
  }
}