import 'package:flutter/material.dart';

import '../constants.dart';

class FormPassWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormPassWidget(
      {super.key,
      this.controller,
      this.isPasswordField,
      this.fieldKey,
      this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType});

  @override
  // ignore: library_private_types_in_public_api
  _FormPassWidgetState createState() => _FormPassWidgetState();
}

class _FormPassWidgetState extends State<FormPassWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: kwhiteColor, borderRadius: BorderRadius.circular(5)),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          controller: widget.controller,
          keyboardType: widget.inputType,
          key: widget.fieldKey,
          obscureText: widget.isPasswordField == true ? _obscureText : false,
          onSaved: widget.onSaved,
          cursorColor: kwhiteColor,
          textInputAction: TextInputAction.done,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            filled: false,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            //prefixIcon: const Icon(Icons.lock_open_outlined),
            hintStyle: const TextStyle(color: Colors.black45),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: widget.isPasswordField == true
                  ? Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: _obscureText == false ? Colors.blue : Colors.grey,
                    )
                  : const Text(""),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1,
                color: kwhiteColor,
              ),
            ),
          ),
        ));
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildSnackError(
      String error, context, size) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.black,
        content: SizedBox(
          height: size.height * 0.02,
          child: Center(
            child: Text(error),
          ),
        ),
      ),
    );
  }
}
