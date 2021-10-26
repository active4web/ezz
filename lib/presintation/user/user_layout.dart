import 'package:ezz/cubit/user_cubit/user_cubit.dart';
import 'package:ezz/shared/components/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserLayout extends StatelessWidget {
  const UserLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit,UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        UserCubit cubit = UserCubit.get(context);
        return Scaffold(
          appBar: CustomAppBar(title: 'الرئيسية',),
          body: IndexedStack(
            children: cubit.screens,
            index: cubit.selectedIndex,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Container(
              height: 70,
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                currentIndex: cubit.selectedIndex,
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  cubit.changeNavBar(value);
                },
                elevation: 30,
                unselectedFontSize: 13,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 13,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.more_horiz_outlined), label: 'المزيد'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag_outlined), label: 'طلباتي'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.heart),
                      label: 'المفضلة'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'الرئيسية'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
