import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class BasePhoneFormField extends StatelessWidget {
  const BasePhoneFormField({
    Key? key,
    required this.onChanged,
    this.controller,
  }) : super(key: key);

  final void Function(PhoneNumber)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      elevation: 5,
      child: InternationalPhoneNumberInput(
        textFieldController: controller,
        locale: 'id_ID',
        countries: const [
          'ID',
          'NG',
        ],
        hintText: '8xxxxxxxxxx',
        keyboardType: TextInputType.phone,
        maxLength: 13,
        selectorConfig: const SelectorConfig(
          trailingSpace: false,
        ),
        textStyle: const TextStyle(fontSize: 20),
        inputBorder: InputBorder.none,
        onInputChanged: onChanged,
        validator: (value) {
          return null;
        },
      ),
    );
  }
}
