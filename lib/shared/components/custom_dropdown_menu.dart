import 'package:flutter/material.dart';
import '../constants.dart';

class CustomDropDownMenu extends StatelessWidget {
  final dynamic value;
  final String hintText;
  final Function onChange;
  final List<DropdownMenuItem> items;
  const CustomDropDownMenu(
      {this.value, this.hintText, this.onChange, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey.shade400,blurRadius: 1,
              offset: Offset(0,0.4),spreadRadius: 0.5)]
      ),
      child: DropdownButtonHideUnderline(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButton(
              value: value,
              isDense: true,
              hint: Text(
                hintText,
              ),
              onChanged: onChange,
              items: items),
        ),
      ),
    );
  }
}
