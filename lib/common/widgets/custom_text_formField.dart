import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;
  final int? maxLength;
  final TextInputAction? textInputAction;

  const new({this.padding, this.hintText, this.labelText, this.textCapitalization,
    this.controller, this.keyBoardType, this.maxLength, this.textInputAction, super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greenLightOne),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        textInputAction: widget.textInputAction,
        maxLength: 5,
        keyboardType: widget.keyBoardType,
        controller: widget.controller,
        textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          hintText: widget.hintText,
          //Essa funcionalidade inicia o que tu quer que apareça descrito no Input
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText?.toUpperCase(),
          labelStyle: AppTextStyles.inputLabelText.copyWith(
            color: AppColors.grey,
          ),
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}