import 'package:ezz/presintation/registeration/on_boarding/on_boarding_screen.dart';
import 'package:ezz/presintation/registeration/sign_up/signup_screen.dart';
import 'package:ezz/shared/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: MediaQuery.of(context).size.height*0.45,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('assets/images/header.png')
               ),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 100,),
                 Container(
                   height: 100,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/images/logo.png')
                     )
                   ),
                 ),
                 SizedBox(height: 24,),
                 Text('تسجيل دخول',style: TextStyle(
                   color: Colors.blue,
                   fontWeight: FontWeight.w500,
                   fontSize: 20
                 ),)
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               children: [
                 TextFormField(
                   style: TextStyle(
                     color: Colors.black54,
                     fontSize: 16
                   ),
                   cursorColor: Colors.blueGrey,
                   decoration: InputDecoration(
                     isDense: true,
                     hintText: 'email',
                     hintStyle: TextStyle(
                       color: Color(0xff8B8B8B)
                     ),
                     fillColor: Color(0xffF5FBFC),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(5)),
                       border: OutlineInputBorder(
                           borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(5)),
                     filled: true
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextFormField(

                   obscureText: true,
                   style: TextStyle(
                       color: Colors.black54,
                       fontSize: 16
                   ),
                   cursorColor: Colors.blueGrey,
                   decoration: InputDecoration(
                     suffixIcon: IconButton(icon:Icon(Icons.visibility_off,
                     color: Colors.black54,),
                     onPressed: (){},),
                       isDense: true,

                       hintText: 'password',
                       hintStyle: TextStyle(
                           color: Color(0xff8B8B8B)
                       ),
                       fillColor: Color(0xffF5FBFC),
                       focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(5)),
                       border: OutlineInputBorder(
                           borderSide: BorderSide.none,
                           borderRadius: BorderRadius.circular(5)),
                       filled: true
                   ),
                 ),
                 SizedBox(height: 30,),
                 GestureDetector(
                   onTap: (){
                     navigateAndFinish(context, OnBoardingScreen());
                   },
                   child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                       colors: [
                         Color(0xff033C57),
                         Color(0xff010B19)
                       ])
                     ),
                     child: Center(child: Text(
                         'دخول',
                       style: TextStyle(color: Colors.white,
                         fontSize: 16
                       ),
                     ),),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Row(textDirection: TextDirection.rtl,
                 children: [
                   Text('نسيت كلمة المرور الخاصة بك ؟',style: TextStyle(
                     color: Colors.grey,
                   ),textDirection: TextDirection.rtl,)
                 ],),
                 SizedBox(height: 20,),
                 Text('او يمكنك الدخول',textDirection: TextDirection.rtl,
                 style: TextStyle(
                   color: Colors.black54,
                   fontSize: 16,
                   fontFamily: 'Cairo',
                 ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       width: 90,
                       height: 90,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage('assets/images/facebook.png')
                           )
                       ),
                     ),
                     Container(
                       width: 90,
                       height: 90,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage('assets/images/google.png')
                         )
                       ),
                     ),
                     Container(
                       width: 90,
                       height: 90,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage('assets/images/twiter.png')
                           )
                       ),
                     ),
                   ],
                 ),
                 Row(
                   textDirection: TextDirection.rtl,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('ليس لديك حساب ؟',textDirection: TextDirection.rtl,
                     style: TextStyle(
                       color: Colors.grey
                     ),),
                     TextButton(
                       child:Text('تسجيل جديد',style: TextStyle(
                         color: Colors.red,
                         fontWeight: FontWeight.bold
                       ),),
                       onPressed: (){
                         navigateTo(context, SignupScreen());
                       },
                     )
                   ],
                 )
               ],
             ),
           )
         ],
       ),
     ),
    );
  }
}
