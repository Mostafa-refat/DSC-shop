import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Me",
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description about the application :"
                  ,
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This is the DSC final project \nit is about e-commerce application to buy products online",
              style: TextStyle(
                fontSize: 15
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "About the developer :"
              ,
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mostafa Refat \nNumber : 01000433618 \nEmail : mostafa.rf3t@gmail.com",
              style: TextStyle(
                  fontSize: 15
              ),
            ),
          ],
        ),
      ),
    );
  }
}
