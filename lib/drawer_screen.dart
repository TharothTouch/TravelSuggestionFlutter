import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_suggestion/home_screen.dart';
import 'package:travel_suggestion/popularPlace_screen.dart';


class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final home = MaterialPageRoute(builder: (context) => NavDrawer());
    final popularPlace = MaterialPageRoute(builder: (context)=> PopularPlace());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
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
              color: Colors.lightGreen,
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
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('About us'),
            ),

          ],
        ),
      )
    );
  }

}