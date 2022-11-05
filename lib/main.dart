import 'package:flutter/material.dart';
import 'package:your_manga_uikit/widgets/icons/svg_icons.dart';
import 'package:your_manga_uikit/widgets/text/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  const TextHeader('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center,),
                  const TextHeaderLight('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
                  const TextBody('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
                  const TextCaption('Название которое вообще не влазиет в рамку потому что японцы приколисты', align: TextAlign.center),
            ],
        ),
          ),
      ),
    ),
    );
  }
}