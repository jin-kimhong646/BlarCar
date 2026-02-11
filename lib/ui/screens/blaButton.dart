import 'package:blahblah/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(BlaSpacings.m),
          child: Column(
            children: [
              BlaButton(text: "Contact valoria", iconData: Icons.chat_bubble),
              SizedBox(height: 20),
              BlaButton(
                text: "Request to Book",
                isPrimary: true,
                iconData: Icons.calendar_month,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlaButton extends StatelessWidget {
  const BlaButton({
    super.key,
    this.isPrimary = false,
    required this.text,
    this.iconData,
  });

  final bool isPrimary;
  final String text;
  final IconData? iconData;

  Color get buttonColor => isPrimary ? BlaColors.primary : BlaColors.white;
  Color get textColor => isPrimary ? BlaColors.white : BlaColors.primary;
  Color get iconColor => isPrimary ? BlaColors.white : BlaColors.primary;
  bool get hasIcon => iconData != null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: BlaColors.greyLight),
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          if (hasIcon) Icon(iconData, color: iconColor),
          Text(text, style: BlaTextStyles.button.copyWith(color: textColor)),
        ],
      ),
    );
  }
}
