import 'package:MapPet/catlocation.dart';
import 'package:MapPet/doglocation.dart';
import 'package:MapPet/exoticlocation.dart';
import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
   static final String title = 'Choose Pet';

  Task2();
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
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            
            buildImageCardcat(),
            buildImageCarddog(),
            buildImageCardexotic(),

            
          ],
        ),
      );

Widget buildImageCardcat() => 
        Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage("assets/images/catimg.jpg"),

             // colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute( builder: (context) { return  CatlocationType(); }, ),);

                },
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Cat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),

          ],
          
        ),
      );

Widget buildImageCarddog() => 
        Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage("assets/images/dogimg.jpg"),

             // colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                      Navigator.push(context,MaterialPageRoute( builder: (context) { return  DoglocationType(); }, ),);

                },
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Dog',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );

Widget buildImageCardexotic() => 
        Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage("assets/images/owll.jpg"),

             // colorFilter: ColorFilters.greyscale,
              child: InkWell(
                onTap: () {
                             Navigator.push(context,MaterialPageRoute( builder: (context) { return  ExoticlocationType(); }, ),);

                },
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Text(
              'Exotic',
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