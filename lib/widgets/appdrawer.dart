import 'package:dsc_shop/provider/app_provider.dart';
import 'package:dsc_shop/view/aboutme_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Welcome To DSC Shop',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(0.5),
              thickness: 4,
            ),
            TextButton(
              onPressed: () =>
                  Provider.of<GetDataProvider>(context, listen: false)
                      .logout(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.logout,color: Colors.white),
                ],
              )
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Language",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutMe()));
                },
                child: Text(
                  "About Me",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
