import 'package:flutter/material.dart';

class _AppText extends StatelessWidget {
  final String text;
  final TextAlign? align;
  final double? size;
  final double? height;
  final Color? color;
  final FontWeight? width;

  const _AppText(
      this.text, {
        Key? key,
        this.align,
        this.size,
        this.color,
        this.height,
        this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.start,
      style: TextStyle(
          fontSize: size ?? 12,
          fontWeight: width ?? FontWeight.w400,
          fontFamily: 'San Francisco',
          color: color ?? Colors.black,
          height: height
      ),
    );
  }
}

class TextBody extends _AppText {
  const TextBody(
      String text, {
        Key? key,
        TextAlign? align,
        double? size,
        double? height,
        Color? color}) :
      super(
        text,
        key: key,
        align: align,
        size: size ?? 12,
        height: height ?? 1.7,
        color: color,
        width: FontWeight.w400
      );
}

class TextCaption extends _AppText {
  const TextCaption(
      String text, {
        Key? key,
        TextAlign? align,
        double? size,
        double? height,
        Color? color}) :
        super(
          text,
          key: key,
          align: align,
          size: size ?? 10,
          height: height ?? 1,
          color: color,
          width: FontWeight.w400
      );
}

class TextHeader extends _AppText {
  const TextHeader(
      String text, {
        Key? key,
        TextAlign? align,
        double? size,
        double? height,
        Color? color}) :
        super(
          text,
          key: key,
          align: align,
          size: size ?? 16,
          height: height ?? 1,
          color: color,
          width: FontWeight.w500
      );
}

class TextHeaderLight extends _AppText {
  const TextHeaderLight(
      String text, {
        Key? key,
        TextAlign? align,
        double? size,
        double? height,
        Color? color}) :
        super(
          text,
          key: key,
          align: align,
          size: size ?? 16,
          height: height ?? 1,
          color: color,
          width: FontWeight.w300
      );
}


