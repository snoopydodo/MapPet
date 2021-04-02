import 'package:MapPet/consttants.dart';
import 'package:MapPet/task2.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:MapPet/widgets/rounded_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MapPet',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF383D46), 
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        ),
      ),
      home: WelcomePetlover(),
    );
  }
}


class  WelcomePetlover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/page2.png"),
            fit: BoxFit.none,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                    text: "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "Let's Journey",
                fontSize: 20,
                press: () {
                  Navigator.push(context,MaterialPageRoute( builder: (context) { return  Task2(); }, ),
                  ); },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

