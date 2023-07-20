import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../color.dart';

class SearchTextBox extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final int? maxLength;
  final void Function(String)? onChanged;
  final int? errorMaxLines;
  final int? hintMaxLines;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final String? hintText;
  final double? width;
  final Function()? onTap;
  final bool? readOnly;
  final bool? autoFocus;
  final FocusNode? focusNode;

  const SearchTextBox({
    super.key,
    this.width,
    this.autoFocus,
    this.focusNode,
    required this.textEditingController,
    this.keyboardType,
    this.textCapitalization,
    this.maxLength,
    this.onChanged,
    this.errorMaxLines,
    this.hintMaxLines,
    this.inputFormatters,
    this.validator,
    this.onTap,
    this.readOnly,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 36,
      child: TextFormField(
        focusNode: focusNode,
        autofocus: autoFocus == null || autoFocus == false ? false : true,
        controller: textEditingController,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization == null
            ? TextCapitalization.none
            : textCapitalization!,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: cGrey,
        ),
        maxLength: maxLength,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 12.0,
          ),
          errorMaxLines: errorMaxLines,
          hintMaxLines: hintMaxLines,
          hintText: hintText,
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: cGrey,
          ),
          errorStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: .25),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: .25),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
        inputFormatters: inputFormatters,
        validator: validator,
        onTap: onTap,
        readOnly: readOnly == null ? false : readOnly!,
      ),
    );
  }
}
