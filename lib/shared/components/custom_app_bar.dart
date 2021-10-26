import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool withActions;
  const CustomAppBar({this.title, this.withActions=true,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title,style: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),),
      actions: [
        withActions
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,
            color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,
              color: Colors.white,)),
          ],
        )
            : nil
      ],
      centerTitle: true,
      flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26)),
          child: Image(
            image: AssetImage(
              "assets/images/appbar header.png",
            ),
            fit: BoxFit.fill,
          )),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
