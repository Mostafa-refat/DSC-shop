// import 'package:dsc_shop/view/products_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class SplashProvider extends ChangeNotifier{
//   Future delayScreen() async {
//     await Future.delayed(Duration(seconds: 2));
//   }
//
//   void didChangeDependencies(){
//     super.didChangeDependencies();
//
//     delayScreen().then((value) => Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (ctx) => HomePage()), (route) => false),
//     );
//     notifyListeners();
//   }
// }