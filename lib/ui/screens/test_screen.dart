import 'package:blahblah/ui/theme/theme.dart';
import 'package:blahblah/ui/widgets/actions/bla_Button.dart';
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
              BlaButton(
                text: "Contact valoria",
                iconData: Icons.chat_bubble,
                onButtonTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
