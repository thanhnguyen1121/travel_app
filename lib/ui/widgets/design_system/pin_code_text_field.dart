import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_application/utils/state_extension.dart';

class PinCodeTextField extends FormField<String> {
  final TextEditingController? textEditingController;

  PinCodeTextField({
    Key? key,
    int? maxLines = 1,
    int? maxLength = 1000,
    FormFieldSetter<String>? onSaved,
    TextInputType keyboardType = TextInputType.number,
    TextInputAction textInputAction = TextInputAction.next,
    TextAlign textAlign = TextAlign.center,
    this.textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? textInputFormatter,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.never,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          builder: (field) {
            final state = field as PinCodeTextFieldState;
            return TextFormField(
              maxLength: maxLength,
              maxLines: maxLines,
              cursorColor: state.context.colorScheme.secondary,
              controller: textEditingController,
              style: state.textTheme.bodyText1,
              textAlign: textAlign,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              decoration: const InputDecoration()
                  .applyDefaults(Theme.of(state.context).inputDecorationTheme)
                  .copyWith(
                      floatingLabelBehavior: floatingLabelBehavior,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 18),
                      errorText: state.errorText,
                      counter: const SizedBox.shrink()),
            );
          },
        );

  @override
  PinCodeTextFieldState createState() {
    return PinCodeTextFieldState();
  }
}

class PinCodeTextFieldState extends FormFieldState<String> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController =
        (widget as PinCodeTextField).textEditingController ??
            TextEditingController(text: widget.initialValue);
  }
}
