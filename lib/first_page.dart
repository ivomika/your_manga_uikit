import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_manga_uikit/atoms/icons/svg_icons.dart';
import 'package:your_manga_uikit/atoms/pattern/svg_patterns.dart';
import 'package:your_manga_uikit/atoms/text/text.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';
import 'package:your_manga_uikit/molecules/button/icon_button.dart';
import 'package:your_manga_uikit/molecules/button/primary_button.dart';
import 'package:your_manga_uikit/molecules/rating/rating.dart';
import 'package:your_manga_uikit/molecules/rating/rating_list.dart';
import 'package:your_manga_uikit/molecules/text_fields/border_text_field.dart';
import 'package:your_manga_uikit/molecules/text_fields/pin_code_field.dart';
import 'package:your_manga_uikit/molecules/widget/widget.dart';

import 'bloc/loading_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late List<Widget> list;

  @override
  void initState() {
    super.initState();

    list = [const YMWidget(text: 'text')];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SvgIcons.star(),
                SvgIcons.save(),
                SvgIcons.play(),
                SvgIcons.arrowLeft(),
                SvgIcons.arrowDown(),
                SvgIcons.saveAll(),
                SvgIcons.search(),
                SvgIcons.download(),
                SvgIcons.googleLogo(),
                SvgIcons.filter(),
                SvgIcons.check(),
                SvgIcons.arrowUp(),
                SvgPatterns.blob(),
                SvgPatterns.puddle(),
                SvgPatterns.wave(),
                const TextHeader('header'),
                const TextHeaderLight('header light'),
                const TextBody('body'),
                const TextCaption('caption'),
                YMIconButton(onPressed: (){}, icon: SvgIcons.play()),
                YMPrimaryButton(onPressed: (){
                  context.read<LoadingBloc>().add(LoadingBlocEvent());

                  Timer(const Duration(seconds: 5), (){
                    context.read<LoadingBloc>().add(LoadedBlocEvent());
                  });
                },
                    child: const TextHeader('Submit')),
                const YMRatingList(rating: 3),
                const YMRatingList(rating: 5),
                const YMBorderTextField(),
                const YMPinCodeField(),
                ...list,
                YMPrimaryButton(
                    onPressed: (){
                      context.read<LoadingContentBloc>().add(LoadedContentBlocEvent());
                    },
                    child: const TextHeader('Загрузить контент')),
                YMPrimaryButton(
                    onPressed: (){
                      context.read<LoadingContentBloc>().add(LoadingContentBlocEvent());
                      setState(() {
                        list.add(const YMWidget(text: 'text'));
                      });
                    },
                    child: const TextHeader('Добавить контент')),
              ],
            ),
          )
        ],
      )
    );
  }
}
