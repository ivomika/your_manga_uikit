import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';
import 'package:your_manga_uikit/bloc/loading_bloc.dart';
import 'package:your_manga_uikit/molecules/button/button_style.dart';

class YMPrimaryButton extends StatefulWidget {
  final void Function() onPressed;
  final void Function()? onLongPress;
  final void Function(bool bool)? onFocusChange;
  final void Function(bool bool)? onHover;
  final FocusNode? focusNode;
  final YMButtonStyle? style;
  final Widget child;

  const YMPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.onLongPress,
    this.onFocusChange,
    this.onHover,
    this.style,
    this.focusNode,
  }) : super(key: key);

  @override
  State<YMPrimaryButton> createState() => _YMPrimaryButtonState();
}

class _YMPrimaryButtonState extends State<YMPrimaryButton> {
  ButtonStyle _getStyle() {
    var style = widget.style;

    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          style?.backgroundColor ?? context.interfaceFields.buttonPrimary),
      overlayColor: MaterialStateProperty.all<Color>(style?.overlayColor ??
          context.interfaceFields.buttonHoverPrimary.withOpacity(.5)),
      elevation: MaterialStateProperty.all<double>(style?.elevation ?? 0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(style?.shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      mouseCursor: MaterialStateProperty.all<MouseCursor>(
          style?.mouseCursor ?? SystemMouseCursors.click),
    );
  }

  Widget _build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.maxFinite,
      child: ElevatedButton(
          style: _getStyle(),
          focusNode: widget.focusNode,
          onPressed: widget.onPressed,
          onLongPress: widget.onLongPress,
          onFocusChange: widget.onFocusChange,
          onHover: widget.onHover,
          child: widget.child),
    );
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoadingBloc>();
    if (bloc.state) {
      return const CircularProgressIndicator();
    }

    return _build(context);
  }
}
