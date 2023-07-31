import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/color.dart';

class TextBox extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final bool? autoFocus;
  final String? obscureChar;
  final bool? obscureText;
  final int? maxLines;
  final int? maxLength;
  final void Function(String)? onChanged;
  final int? errorMaxLines;
  final int? hintMaxLines;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final FocusNode? currentFocus;
  final bool? last;
  final void Function(String)? onFieldSubmitted;
  final double? width;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const TextBox({
    super.key,
    this.width,
    required this.textEditingController,
    required this.hintText,
    this.onFieldSubmitted,
    this.currentFocus,
    this.last,
    this.keyboardType,
    this.textCapitalization,
    this.autoFocus,
    this.obscureChar,
    this.obscureText,
    this.maxLines,
    this.maxLength,
    this.onChanged,
    this.errorMaxLines,
    this.hintMaxLines,
    this.inputFormatters,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: textEditingController,
        focusNode: currentFocus,
        onFieldSubmitted: last == true
            ? (value) {
                currentFocus!.unfocus();
              }
            : onFieldSubmitted,
        textInputAction: last == null || last == false
            ? TextInputAction.next
            : TextInputAction.done,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization == null
            ? TextCapitalization.none
            : textCapitalization!,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: cWhite,
        ),
        autofocus: autoFocus == null || autoFocus == false ? false : true,
        obscureText: obscureText == null || obscureText == false ? false : true,
        obscuringCharacter:
            obscureText == null || obscureText == false || obscureChar == ''
                ? '*'
                : obscureChar!,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          fillColor: const Color(0xff121212),
          filled: true,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 15.0,
          ),
          isDense: true,
          errorMaxLines: errorMaxLines,
          hintMaxLines: hintMaxLines,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(134, 214, 213, 213),
          ),
          errorStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: cGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: cBlue),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        inputFormatters: inputFormatters,
        validator: validator,
      ),
    );
  }
}
