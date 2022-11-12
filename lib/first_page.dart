import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_manga_uikit/atoms/icons/svg_icons.dart';
import 'package:your_manga_uikit/atoms/text/text.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';
import 'package:your_manga_uikit/molecules/button/icon_button.dart';
import 'package:your_manga_uikit/molecules/button/primary_button.dart';
import 'package:your_manga_uikit/molecules/widget/widget.dart';

import 'bloc/loading_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: YMIconButton(
        onPressed: () {
          context.read<LoadingContentBloc>().add(LoadedContentBlocEvent());
        },
        icon: SvgIcons.arrowLeft(color: context.interfaceFields.textPrimary,),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) =>
                  YMWidget(text: 'Сезон $index', margin: const EdgeInsets.symmetric(horizontal: 20),)
            ),
          ),
          const TextField(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(),
          ),
          const TextField(),
          YMPrimaryButton(
            onPressed: (){
              context.read<LoadingBloc>().add(LoadingBlocEvent());
            },
            child: TextHeader('Submit', color: context.interfaceFields.bgPrimary,)
          ),
        ],
      ),
    );
  }
}
