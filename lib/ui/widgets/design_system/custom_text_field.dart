import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/lib.dart';

class CustomTextField extends FormField<String> {
  final TextEditingController? textEditingController;

  CustomTextField(
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
      this.textEditingController,
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
          builder: (field) {
            final state = field as CustomTextFieldState;
            return TextFormField(
              cursorColor: state.context.colorScheme.secondary,
              obscureText: isPassword,
              controller: textEditingController,
              obscuringCharacter: '*',
              textAlign: TextAlign.justify,
              style: state.textTheme.bodyText1,
              decoration: const InputDecoration()
                  .applyDefaults(Theme.of(state.context).inputDecorationTheme)
                  .copyWith(
                    hintText: hint,
                    labelText: title,
                    floatingLabelBehavior: floatingLabelBehavior,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    suffixIconConstraints: const BoxConstraints(
                        maxWidth: 56,
                        minWidth: 56,
                        maxHeight: 56,
                        minHeight: 56),
                    suffixIcon: Material(
                      type: MaterialType.transparency,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        child: Ink(
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
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
                    ),
                    errorText: state.errorText,
                  ),
            );
          },
        );

  @override
  CustomTextFieldState createState() {
    return CustomTextFieldState();
  }
}

class CustomTextFieldState extends FormFieldState<String> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = (widget as CustomTextField).textEditingController ??
        TextEditingController(text: widget.initialValue);
  }
}
