import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_manga_uikit/atoms/icons/svg_icons.dart';
import 'package:your_manga_uikit/atoms/text/text.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';

class YMBorderTextField extends StatefulWidget {
  final Widget? icon;
  final Widget? prefix;
  final String? prefixText;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? placeholder;
  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool? readOnly;
  final bool? obscureText;
  final String? obscuringCharacter;
  final int? maxLength;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final MouseCursor? mouseCursor;

  const YMBorderTextField({
    Key? key,
    this.icon,
    this.prefix,
    this.prefixText,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.textAlign,
    this.textAlignVertical,
    this.readOnly,
    this.obscureText,
    this.obscuringCharacter,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.mouseCursor,
    this.placeholder}) : super(key: key);

  @override
  State<YMBorderTextField> createState() => _YMBorderTextFieldState();
}

class _YMBorderTextFieldState extends State<YMBorderTextField> {
  OutlineInputBorder _getBorderStyle(BuildContext context) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
              color: context.interfaceFields.bgOverlay,
              width: 2
          )
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.maxFinite,
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.initialValue,
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign ?? TextAlign.start,
        textAlignVertical: widget.textAlignVertical ?? TextAlignVertical.top,
        readOnly: widget.readOnly ?? false,
        obscureText: widget.obscureText ?? false,
        obscuringCharacter: widget.obscuringCharacter ?? '•',
        maxLength: widget.maxLength,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        onEditingComplete: widget.onEditingComplete,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        enabled: widget.enabled,
        mouseCursor: widget.mouseCursor,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'San Francisco',
          color: context.interfaceFields.textPrimary
        ),
        cursorColor: context.interfaceFields.bgOverlay,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          icon: widget.icon,
          prefix: widget.prefix,
          prefixText: widget.prefixText,
          prefixIcon: widget.prefixIcon,
          suffix: widget.suffix,
          suffixIcon: widget.suffixIcon,
          errorBorder: _getBorderStyle(context),
          focusedBorder: _getBorderStyle(context),
          focusedErrorBorder: _getBorderStyle(context),
          disabledBorder: _getBorderStyle(context),
          enabledBorder: _getBorderStyle(context),
          border: _getBorderStyle(context),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
