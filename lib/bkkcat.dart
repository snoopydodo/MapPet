import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'catlocation.dart';

class BkkCat extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State< BkkCat> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute( builder: (context) { return CatlocationType(); }, ),);
            }),
        title: Text("Bangkok"),
        
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(13.7563,100.5018), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(13.7563,100.5018), zoom: zoomVal)));
  }

  
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/63/2016/11/10025010/destination-cat-cafe.jpg",
                  13.7514502,100.5299679,"Caturday cat cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://thestandard.co/wp-content/uploads/2020/06/POP-Restaurant-_-Bar_Mohu-Mohu-Cafe%CC%81-%E0%B8%84%E0%B8%B2%E0%B9%80%E0%B8%9F%E0%B9%88%E0%B9%81%E0%B8%A1%E0%B8%A7%E0%B9%81%E0%B8%AA%E0%B8%99%E0%B8%AD%E0%B8%9A%E0%B8%AD%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A1%E0%B8%AD%E0%B8%9A%E0%B8%8A%E0%B8%B5%E0%B8%A7%E0%B8%B4%E0%B8%95%E0%B9%83%E0%B8%AB%E0%B8%A1%E0%B9%88%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B9%81%E0%B8%A1%E0%B8%A7%E0%B8%88%E0%B8%A3%E0%B8%88%E0%B8%B1%E0%B8%94_COVER.jpg",
                  13.72826,100.5221799,"Mohu Mohu Cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh3.googleusercontent.com/p/AF1QipOH2RX0YpUyjLa1bI7WMptYyafOKJhwNZASgoIB=w600-k",
                  13.813332,100.5192553,"Fat Cat Cafe Club"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.chillpainai.com/src/wewakeup/img_chillpainai/1375/1449220669-02.jpg",
                  13.7436192,100.4672311,"Year of The Cat Cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.chillpainai.com/src/wewakeup/img_chillpainai/1375/1449220669-02.jpg",
                  13.7893217,100.5852186,"HOC Beverage Bar & Cat Cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://asian-traveller.com/jp/wp-content/uploads/2019/10/catnip-2-1024x768.jpg",
                  13.7146329,100.5283604,"CatNip Cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiU7HS330Bn6_ez3WBbtugypQVlPJoHUb_8Q&usqp=CAU",
                  13.7008189,100.5283803,"Catsanova - Adoptable Cat Cafe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://cdn.eatigo.com/restaurant-image/5006585_754b009e-4dc7-4b55-a583-47843df25949.jpg",
                  13.727732,100.5718525,"The Fairy Door"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.tinitinai.com/wp-content/uploads/2019/10/catster-by-kingdom-of-tigers-7.jpg",
                  13.6534414,100.5181079,"Catster by Kingdomoftigers"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "http://4.bp.blogspot.com/-xwGjZtGka5Q/UX0Dc-B_cBI/AAAAAAAAA7k/PA5ok2zqFAk/s320/IMG_3590.jpg",
                  13.7328211,100.576878,"Chico Design Bangkok"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat,double long,String restaurantName) {
    return  GestureDetector(
        onTap: () {
          _gotoLocation(lat,long);
        },
        child:Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(_image),
                            ),
                          ),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                           child: myDetailsContainer1(restaurantName),
                          ),
                        ),

                      ],)
                ),
              ),
            ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(restaurantName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height:5.0),
        Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "5.0",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStarHalf,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
               Container(
                  child: Text(
                "(946)",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
          SizedBox(height:5.0),
        Container(
                  child: Text(
                "Bangkok \u00B7 \u0024\u0024 \u00B7 1.6 mi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              SizedBox(height:5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(13.7563,100.5018), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          caturdayMarker,mohuMarker,fatCatMarker,yearOfMarker,hocBeverageMarker,catNipMarker,catsanovaMarker,fairyDoorMarker,catsterMarker,chicoMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}

Marker caturdayMarker = Marker(
  markerId: MarkerId('Caturday cat cafe'),
  position: LatLng(13.7514502,100.5299679),
  infoWindow: InfoWindow(title: 'Caturday cat cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker mohuMarker = Marker(
  markerId: MarkerId('Mohu Mohu Cafe'),
  position: LatLng(13.72826,100.5221799),
  infoWindow: InfoWindow(title: 'Mohu Mohu Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker fatCatMarker = Marker(
  markerId: MarkerId('Fat Cat Cafe Club'),
  position: LatLng(13.813332,100.5192553),
  infoWindow: InfoWindow(title: 'Fat Cat Cafe Club'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker yearOfMarker = Marker(
  markerId: MarkerId('Year of The Cat Cafe'),
  position: LatLng(13.7436192,100.4672311),
  infoWindow: InfoWindow(title: 'Year of The Cat Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker hocBeverageMarker = Marker(
  markerId: MarkerId('HOC Beverage Bar & Cat Cafe'),
  position: LatLng(13.7893217,100.5852186),
  infoWindow: InfoWindow(title: 'HOC Beverage Bar & Cat Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker catNipMarker = Marker(
  markerId: MarkerId('CatNip Cafe'),
  position: LatLng(13.7146329,100.5283604),
  infoWindow: InfoWindow(title: 'CatNip Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker catsanovaMarker = Marker(
  markerId: MarkerId('Catsanova - Adoptable Cat Cafe'),
  position: LatLng(13.7008189,100.5283803),
  infoWindow: InfoWindow(title: 'Catsanova - Adoptable Cat Cafe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker fairyDoorMarker = Marker(
  markerId: MarkerId('The Fairy Door'),
  position: LatLng(13.727732,100.5718525),
  infoWindow: InfoWindow(title: 'The Fairy Door'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker catsterMarker = Marker(
  markerId: MarkerId('Catster by Kingdomoftigers'),
  position: LatLng(13.6534414,100.5181079),
  infoWindow: InfoWindow(title: 'Catster by Kingdomoftigers'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker chicoMarker = Marker(
  markerId: MarkerId('Chico Design Bangkok'),
  position: LatLng(13.7328211,100.576878),
  infoWindow: InfoWindow(title: 'Chico Design Bangkok'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);