import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class BaseOTPField extends StatelessWidget {
  const BaseOTPField({
    Key? key,
    required this.onChanged,
    required this.onSubmit,
  }) : super(key: key);

  final void Function(String) onChanged;
  final void Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpPinField(
      autoFocus: false,
      keyboardType: TextInputType.number,
      otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration,
      maxLength: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      otpPinFieldStyle: const OtpPinFieldStyle(
        fieldPadding: 0,
        textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
      onSubmit: onSubmit,
      onChange: onChanged,
    );
  }
}
