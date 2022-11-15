import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_manga_uikit/atoms/pattern/svg_patterns.dart';
import 'package:your_manga_uikit/atoms/text/text.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';
import 'package:your_manga_uikit/bloc/loading_bloc.dart';
import 'package:your_manga_uikit/utils/media_query_utils.dart';

class YMWidget extends StatefulWidget {
  final String text;
  final SvgPatterns? pattern;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Color? textColor;

  const YMWidget({
    Key? key,
    required this.text,
    this.pattern,
    this.margin,
    this.backgroundColor,
    this.textColor}) : super(key: key);

  @override
  State<YMWidget> createState() => _YMWidgetState();
}

class _YMWidgetState extends State<YMWidget> {
  var _loading = true;


  Widget _buildPlaceholder(BuildContext context, double width, double height){
    return Container(
      width: width,
      height: height,
      margin: widget.margin ?? EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: widget.backgroundColor ?? context.interfaceFields.bgLoading,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
    );
  }

  Widget _build(BuildContext context, double width, double height) {
    return Container(
      width: width,
      height: height,
      margin: widget.margin ?? EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: widget.backgroundColor ?? context.interfaceFields.bgSecondary,
          borderRadius: const BorderRadius.all(Radius.circular(16))),

      child: Stack(fit: StackFit.expand, children: [
        /// Патерн
        FittedBox(
          alignment: Alignment.bottomRight,
          child: widget.pattern ?? SvgPatterns.wave(),
        ),
        /// Текст
        Positioned(
            top: 32,
            left: 32,
            child: TextHeader(
              widget.text,
              color: context.interfaceFields.textPrimary,
            )),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    /// проверка локальной переменной
    /// если мы уже загрузили контент больше не отслеживаем состояния
    if(_loading){
      /// берем у родителей состояние страницы
      /// Контент грузиться/загрузился
      var bloc = context.watch<LoadingContentBloc>();
      setState(() {
        _loading = bloc.state;
      });
    }

    if(_loading){
      return MediaQueryUtils.wrapper(context, _buildPlaceholder(context, 300, 170));
    }

    return MediaQueryUtils.wrapper(context, _build(context, 300, 170));
  }
}
