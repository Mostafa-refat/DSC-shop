import 'package:dsc_shop/widgets/appdrawer.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text(
            'DSC SHOP',
          ),
        ),
      ),
    );
  }
}
