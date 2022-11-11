import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_manga_uikit/bloc/loading_bloc.dart';
import 'atoms/icons/svg_icons.dart';
import 'atoms/pattern/svg_patterns.dart';
import 'atoms/text/text.dart';
import 'atoms/theme/interface_fields.dart';
import 'molecules/widget/widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        extensions: [InterfaceFields.light]
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          extensions: [InterfaceFields.dark]
      ),
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: AppExample()
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
      child: SafeArea(
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
              const TextHeader('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center,),
              const TextHeaderLight('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
              const TextBody('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
              const TextCaption('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPatterns.blob(size: 100,),
                  SvgPatterns.puddle(size: 100,),
                  SvgPatterns.wave(size: 100,),
                ],
              ),
              Center(child: YMWidget(
                margin: const EdgeInsets.only(top: 20),
                text: 'Лучшее в этом месяце',
                pattern: SvgPatterns.puddle(),)),
              Center(child: YMWidget(
                margin: const EdgeInsets.only(top: 20),
                text: 'Лучшее в этом месяце',
                pattern: SvgPatterns.blob(),)),
              Center(child: YMWidget(
                margin: const EdgeInsets.only(top: 20),
                text: 'Лучшее в этом месяце',
                pattern: SvgPatterns.wave(),)),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                      onPressed: (){
                        context.read<LoadingBloc>().add(LoadingBlocEvent());
                        Timer(Duration(seconds: 2), (){
                          context.read<LoadingBloc>().add(LoadedBlocEvent());
                        });
                      },
                      child: Text('kek')
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
