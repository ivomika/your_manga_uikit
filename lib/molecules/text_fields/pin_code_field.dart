import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:your_manga_uikit/atoms/theme/interface_fields.dart';

class YMPinCodeField extends StatefulWidget {
  const YMPinCodeField({Key? key}) : super(key: key);

  @override
  State<YMPinCodeField> createState() => _YMPinCodeFieldState();
}

class _YMPinCodeFieldState extends State<YMPinCodeField> {
  @override
  Widget build(BuildContext context) {
    var focusedBorderColor = context.interfaceFields.accentPrimary;
    var borderColor = context.interfaceFields.bgOverlay;

    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: 43,
      height: 43,
      textStyle: TextStyle(
        fontSize: 22,
        color: context.interfaceFields.textPrimary,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: 2),
      ),
    );

    return  Pinput(
      length: 4,
      // controller: pinController,
      // focusNode: focusNode,
      androidSmsAutofillMethod:
      AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: defaultPinTheme,
      // validator: (value) {
      //   return value == '2222' ? null : 'Pin is incorrect';
      // },
      // onClipboardFound: (value) {
      //   debugPrint('onClipboardFound: $value');
      //   pinController.setText(value);
      // },
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: (pin) {
        debugPrint('onCompleted: $pin');
      },
      onChanged: (value) {
        debugPrint('onChanged: $value');
      },
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: focusedBorderColor,
          ),
        ],
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: focusedBorderColor, width: 2),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: focusedBorderColor, width: 2),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: context.interfaceFields.error, width: 2),
      ),
    );
  }
}
