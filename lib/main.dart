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
        home: const AppExample(),
      ),
    );
  }
}

class AppExample extends StatefulWidget {
  const AppExample({Key? key}) : super(key: key);

  @override
  State<AppExample> createState() => _AppExampleState();
}

class _AppExampleState extends State<AppExample> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoadingBloc>(
      create: (_) => LoadingBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: context.interfaceFields.bgPrimary,
          body: SafeArea(
            child: Center(
              child: ListView(
                children: [
                  const Text('Title'),
                  SvgIcons.star(),
                  SvgIcons.search(),
                  SvgIcons.arrowLeft(),
                  SvgIcons.arrowDown(),
                  SvgIcons.arrowUp(),
                  SvgIcons.check(),
                  SvgIcons.filter(),
                  SvgIcons.googleLogo(),
                  SvgIcons.play(),
                  SvgIcons.download(),
                  SvgIcons.save(),
                  SvgIcons.saveAll(),
                  const TextHeader(
                    'Название которое вообще не влазиет в рамку потому что японцы приколисты',
                    align: TextAlign.center,
                  ),
                  const TextHeaderLight(
                      'Название которое вообще не влазиет в рамку потому что японцы приколисты',
                      align: TextAlign.center),
                  const TextBody(
                      'Название которое вообще не влазиет в рамку потому что японцы приколисты',
                      align: TextAlign.center),
                  const TextCaption(
                      'Название которое вообще не влазиет в рамку потому что японцы приколисты',
                      align: TextAlign.center),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SvgPatterns.blob(
                        size: 100,
                      ),
                      SvgPatterns.puddle(
                        size: 100,
                      ),
                      SvgPatterns.wave(
                        size: 100,
                      ),
                    ],
                  ),
                  Center(
                      child: YMWidget(
                    margin: const EdgeInsets.only(top: 20),
                    text: 'Лучшее в этом месяце',
                    pattern: SvgPatterns.puddle(),
                  )),
                  Center(
                      child: YMWidget(
                    margin: const EdgeInsets.only(top: 20),
                    text: 'Лучшее в этом месяце',
                    pattern: SvgPatterns.blob(),
                  )),
                  Center(
                      child: YMWidget(
                    margin: const EdgeInsets.only(top: 20),
                    text: 'Лучшее в этом месяце',
                    pattern: SvgPatterns.wave(),
                  )),
                  SizedBox(
                    height: 43,
                    width: 200,
                    child: YMPrimaryButton(
                        onPressed: () {
                          context.read<LoadingBloc>().add(LoadingBlocEvent());
                          Timer(const Duration(seconds: 2), () {
                            context.read<LoadingBloc>().add(LoadedBlocEvent());
                          });
                        },
                        child: const Text('kek')),
                  ),
                  Center(
                      child: YMIconButton(
                          onPressed: () {}, icon: SvgIcons.saveAll())),
                  Center(
                      child: YMIconButton(
                          onPressed: () {}, icon: SvgIcons.save())),
                  Center(
                      child: YMIconButton(
                          onPressed: () {}, icon: SvgIcons.play())),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          YMRating(),
                          YMRating(),
                          YMRating(),
                          YMRating(),
                          YMRating(),
                        ],
                      ),
                    ),
                  ),
                  const YMBorderTextField(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: YMBorderTextField(
                      placeholder: '+ 7 (555) 421-13-12',
                      inputFormatters: [
                        MaskTextInputFormatter(mask: '+ # (###) ###-##-##')
                      ],
                    ),
                  ),
                  const YMPinCodeField()
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
