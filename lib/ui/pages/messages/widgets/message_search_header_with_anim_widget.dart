import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/widgets/design_system/search_text_form_field.dart';

class MessageSearchHeaderWithAnimWidget extends StatefulWidget {
  const MessageSearchHeaderWithAnimWidget({Key? key}) : super(key: key);

  @override
  _MessageSearchHeaderWithAnimWidgetState createState() =>
      _MessageSearchHeaderWithAnimWidgetState();
}

class _MessageSearchHeaderWithAnimWidgetState
    extends State<MessageSearchHeaderWithAnimWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 1));

  late final Animation<Offset> offset =
      Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(
    CurvedAnimation(parent: controller, curve: Curves.easeIn),
  );

  @override
  void initState() {
    super.initState();
    repeatOne();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> repeatOne() async {
    await controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SearchTextFormField(
          hint: S.current.hint_search_message,
          suffixIcon: Assets.icons.icMicrophone
              .svg(width: 24, height: 24, color: AppColors.h7D848D),
          prefixIcon: Assets.icons.icSearch
              .svg(width: 24, height: 24, color: AppColors.h7D848D),
        ),
      ),
    );
  }
}
