import 'package:dsc_shop/view/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dsc_shop/model/products.dart';


class GetDataProvider extends ChangeNotifier{


  Future<List<Products>> getData() async {
    String url = "https://fakestoreapi.com/products#";
    var jsonData = await http.get(Uri.parse(url));

    if (jsonData.statusCode == 200) {
      List data = jsonDecode(jsonData.body);
      List<Products> allUsers = [];
      for (var p in data) {
        Products products = Products.fromJson(p);
        allUsers.add(products);
      }
      return allUsers;
    } else {
      throw Exception("Error");
    }
  }

  Future<void> logout(BuildContext ctx) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx) => AuthScreen()));
  }

}