import 'package:ezz/presintation/registeration/login/login_screen.dart';
import 'package:ezz/shared/components/custom_dropdown_menu.dart';
import 'package:ezz/shared/components/custom_form_field.dart';
import 'package:ezz/shared/components/custom_image_picker.dart';
import 'package:ezz/shared/constants.dart';
import 'package:ezz/shared/defaults.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.transparent,
            pinned: true,
            //snap: true,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/header.png'),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/logo.png'))),
                      ),
                      SizedBox(height: 16,),
                      Text(
                        'انشاء حساب',
                        style: TextStyle(
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                )),
          ),
           SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height+260,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        // changes position of shadow
                      ),]
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.blueGrey,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelStyle: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Tajawal'
                            ),
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10)),
                                color: Colors.blueGrey),
                          controller: _tabController,
                          labelPadding: EdgeInsets.symmetric(vertical: 16),
                          tabs: [
                            Text('تاجر'),
                            Text('مستخدم'),
                        ]),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              ListView(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  SizedBox(height: 30,),
                                  CustomFormField(label: "اسم المستخدم",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "اسم المتجر",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "الهوية الوطنية",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "رقم الجوال",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "البريد الألكتروني",),
                                  SizedBox(height: 20,),
                                  CustomImagePicker(),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المحافظة',),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المدينه',),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المنطقة',),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "كلمة المرور",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "تأكيد كلمة المرور",),
                                  SizedBox(height: 30,),
                                  Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                        color: kGreenColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('اشتراك',
                                      style:TextStyle(
                                          color: Colors.white,
                                          fontSize: 16
                                      ),)),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(' لديك حساب بالفعل ؟',textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            color: Colors.grey
                                        ),),
                                      TextButton(
                                        child:Text('تسجيل الدخول',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        onPressed: (){
                                          navigateTo(context, LoginScreen());
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              ListView(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  SizedBox(height: 30,),
                                  CustomFormField(label: "اسم المستخدم",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "رقم الجوال",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "البريد الالكتروني",),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المحافظة',),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المدينه',),
                                  SizedBox(height: 20,),
                                  CustomDropDownMenu(hintText: 'المنطقة',),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "كلمة المرور",),
                                  SizedBox(height: 20,),
                                  CustomFormField(label: "تأكيد كلمة المرور",),
                                  SizedBox(height: 30,),
                                  Container(
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: kGreenColor,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('اشتراك',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
                                      ),)),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(' لديك حساب بالفعل ؟',textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            color: Colors.grey
                                        ),),
                                      TextButton(
                                        child:Text('تسجيل الدخول',style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        onPressed: (){
                                          navigateTo(context, LoginScreen());
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}
