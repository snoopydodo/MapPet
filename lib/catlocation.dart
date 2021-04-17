 import 'package:MapPet/bkkcat.dart';
import 'package:MapPet/task2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'outoftowncat.dart';

class CatlocationType extends StatelessWidget {
   static final String title = 'Choose Cat Province';

  CatlocationType();
  // This widget is the root of your application.
   @override
  Widget build(BuildContext context) => MaterialApp(
    
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
        
      );
      
     
}


class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute( builder: (context) { return Task2(); }, ),);
            }),
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            
            
            buildImageCardBkkCat(),
            buildImageCardOutCat(),

            
          ],
        ),
      );

Widget buildImageCardBkkCat() => 
        Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage("assets/images/bangkokplace.jpg"),

             // colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute( builder: (context) { return BkkCat(); }, ),);
                },
              ),
              height: 330,
              fit: BoxFit.cover,
            ),
            Text(
              'Bangkok',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );

Widget buildImageCardOutCat() => 
        Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage("assets/images/outoftown.jpg"),

              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute( builder: (context) { return OutofCat(); }, ),);
                },
              ),
              height: 330,
              fit: BoxFit.cover,
            ),
            Text(
              'Out of Town',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );

}