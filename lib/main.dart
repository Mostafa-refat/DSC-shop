import 'package:dsc_shop/provider/app_provider.dart';
import 'package:dsc_shop/view/auth_screen.dart';
import 'package:dsc_shop/view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GetDataProvider>(
      create: (context) => GetDataProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: SplashScreen(),
      ),

    );
  }
}

