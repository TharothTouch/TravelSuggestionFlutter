import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_suggestion/about_us_screen.dart';
import 'package:travel_suggestion/map_screen.dart';
import 'package:travel_suggestion/popular_place_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // Navigator 
    final home = MaterialPageRoute(builder: (context) => NavDrawer());
    final popularPlace = MaterialPageRoute(builder: (context)=> PopularPlace());
    final mapTSP = MaterialPageRoute(builder: (context) => MapTSP());
    final aboutus = MaterialPageRoute(builder: (context)=> AboutUs());

    // Widget imageSlider(String image){
    //   return Image.asset('/assets');
    // }

    final kps = Image.asset('assets/sihanoukville.jpg');
    final sr = Image.asset('assets/siemreap.jpg');
    final pvh = Image.asset('assets/preahvihear.jpg');
    final ilm = Image.asset('assets/ilovemondulkiri.jpeg');
    
 

    final imageSliders = CarouselSlider(
      height: 400,
      items: <Widget>[
        kps,
        sr,
        pvh,
        ilm,
      ],
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 2),
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