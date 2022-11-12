import 'package:flutter/material.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';

import 'button_style.dart';

class YMIconButton extends StatefulWidget {
  final void Function() onPressed;
  final void Function()? onLongPress;
  final void Function(bool bool)? onFocusChange;
  final void Function(bool bool)? onHover;
  final FocusNode? focusNode;
  final YMButtonStyle? style;
  final double? size;
  final Widget icon;

  const YMIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.onLongPress,
    this.onFocusChange,
    this.onHover,
    this.style,
    this.focusNode,
    this.size,
  }) : super(key: key);

  @override
  State<YMIconButton> createState() => _YMIconButtonState();
}

class _YMIconButtonState extends State<YMIconButton> {
  ButtonStyle _getStyle() {
    var style = widget.style;
    var size = widget.size ?? 50;

    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          style?.backgroundColor ?? context.interfaceFields.bgSecondary),
      overlayColor: MaterialStateProperty.all<Color>(style?.overlayColor ??
          context.interfaceFields.bgOverlay.withOpacity(.2)),
      elevation: MaterialStateProperty.all<double>(style?.elevation ?? 0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(style?.shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      mouseCursor: MaterialStateProperty.all<MouseCursor>(
          style?.mouseCursor ?? SystemMouseCursors.click),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      fixedSize: MaterialStateProperty.all<Size>(Size(size, size)),
      maximumSize: MaterialStateProperty.all<Size>(Size(size, size)),
      minimumSize: MaterialStateProperty.all<Size>(Size(size, size))
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: _getStyle(),
        focusNode: widget.focusNode,
        onPressed: widget.onPressed,
        onLongPress: widget.onLongPress,
        onFocusChange: widget.onFocusChange,
        onHover: widget.onHover,
        child: widget.icon);
  }
}
