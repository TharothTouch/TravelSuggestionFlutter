import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_suggestion/about_us_screen.dart';
import 'package:travel_suggestion/map_screen.dart';
import 'package:travel_suggestion/popular_place_screen.dart';
import 'package:carousel_pro/carousel_pro.dart';

class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // Navigator 
    final home = MaterialPageRoute(builder: (context) => NavDrawer());
    final popularPlace = MaterialPageRoute(builder: (context)=> PopularPlace());
    final mapTSP = MaterialPageRoute(builder: (context) => MapTSP());
    final aboutus = MaterialPageRoute(builder: (context)=> AboutUs());


//    final imageSliders = CarouselSlider(
//      height: 210,
//      items: <Widget>[
//        kps,
//        dt,
//        pvh,
//        ilm,
//      ],
//      autoPlay: true,
//      autoPlayInterval: Duration(seconds: 2),
//    );

    final imageSliders = SizedBox(
      height: 250,
      child: Carousel(
        images: [
          AssetImage('assets/sihanoukville.jpg'),
          AssetImage('assets/daungte.jpg'),
          AssetImage('assets/preahvihear.jpg'),
          AssetImage('assets/ilovemondulkiri.jpeg'),
          AssetImage('assets/siemreap.jpg')
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        indicatorBgPadding: 5.0,
        overlayShadow: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[   
            Container(
              child: DrawerHeader(
                child: CircleAvatar(
                  child: Text('T', style: TextStyle(fontSize: 70)),
                ),
              ),
              color: Colors.purple[300],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                Navigator.of(context).push(home);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Popular Place'),
              onTap: (){
                Navigator.of(context).push(popularPlace);
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title:  Text('Map'),
              onTap: (){
                Navigator.of(context).push(mapTSP);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About us'),
              onTap: (){
                Navigator.of(context).push(aboutus);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          imageSliders,
        ],
      ),
    );
  }

}