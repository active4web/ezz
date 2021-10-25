import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key key, this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey.shade400,blurRadius: 1,
          offset: Offset(0,0.4),spreadRadius: 0.5)]
      ),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            hintTextDirection: TextDirection.rtl
        ),
        readOnly: false,
        style: TextStyle(
            color: Colors.black
        ),
      ),
    );
  }
}