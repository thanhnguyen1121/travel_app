import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/utils/context_extension.dart';

class SearchTextFormField extends FormField<String> {
  SearchTextFormField(
      {Key? key,
      String? initialValue,
      String? hint,
      String? title,
      Widget? action,
      int? maxLines = 1,
      int? maxLength = 1000,
      FormFieldSetter<String>? onSaved,
      bool isPassword = false,
      TextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      TextEditingController? textEditingController,
      ValueChanged<String>? onChanged,
      VoidCallback? onEditingComplete,
      FormFieldValidator<String>? validator,
      List<TextInputFormatter>? textInputFormatter,
      FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.never,
      Color? backgroundColor,
      String? description,
      Widget? suffixIcon,
      Widget? prefixIcon})
      : super(
          key: key,
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          builder: (state) {
            return TextFormField(
              cursorColor: state.context.colorScheme.secondary,
              obscureText: isPassword,
              controller: textEditingController,
              obscuringCharacter: '*',
              textAlign: TextAlign.justify,
              onChanged: onChanged,
              style: state.context.textTheme.bodyText1,
              decoration: const InputDecoration()
                  .applyDefaults(Theme.of(state.context).inputDecorationTheme)
                  .copyWith(
                    hintText: hint,
                    labelText: title,
                    floatingLabelBehavior: floatingLabelBehavior,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Colors.transparent, width: 1),
                    ),
                    suffixIconConstraints: const BoxConstraints(
                        maxWidth: 60,
                        minWidth: 60,
                        maxHeight: 56,
                        minHeight: 56),
                    prefixIcon: prefixIcon != null
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: prefixIcon,
                              ),
                            ],
                          )
                        : null,
                    suffixIcon: suffixIcon != null
                        ? Material(
                            type: MaterialType.transparency,
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: VerticalDivider(
                                    width: 2,
                                    color: AppColors.h7D848D,
                                    thickness: 1,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: InkResponse(
                                      radius: 24,
                                      child: suffixIcon,
                                      onTap: () {
                                        state.setState(() {
                                          isPassword = !isPassword;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : null,
                    errorText: state.errorText,
                  ),
            );
          },
        );
}
