import 'package:blahblah/ui/theme/theme.dart';
import 'package:blahblah/ui/widgets/actions/bla_icon_button.dart';
import 'package:flutter/material.dart';

class RidePrefsInput extends StatelessWidget {
  const RidePrefsInput({
    super.key,
    required this.icon,
    required this.text,
    required this.onSelect,
    this.rightIcon,
    this.onRightIconClick,
    required this.isPlaceHolder,
  });

  final IconData icon;
  final String text;
  final VoidCallback onSelect;
  final IconData? rightIcon;
  final VoidCallback? onRightIconClick;
  final bool isPlaceHolder;

  @override
  Widget build(BuildContext context) {
     Color textColor = isPlaceHolder == true ? BlaColors.textLight : BlaColors.textNormal ; 
      

    return ListTile(
      onTap: onSelect,
      leading: Icon(icon),
      title: Text(text,
      style: BlaTextStyles.button.copyWith(fontSize: 14 , color: textColor),
      ),
      trailing:BlaIconButton(icon: rightIcon, onPressed: onRightIconClick),
    );
  }
}

