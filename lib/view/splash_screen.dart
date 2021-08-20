import 'package:dsc_shop/view/auth_screen.dart';
import 'package:dsc_shop/view/intial_screen.dart';
import 'package:dsc_shop/view/products_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future delayScreen() async {
    await Future.delayed(Duration(seconds: 2));
  }

  void didChangeDependencies(){
    super.didChangeDependencies();

    delayScreen().then((value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (ctx) => AuthScreen()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              size: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'DSC SHOP',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
