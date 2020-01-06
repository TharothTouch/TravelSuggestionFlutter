import 'package:flutter/material.dart';


class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[ 
            UserAccountsDrawerHeader(
              accountName: Text('Tharoth'),
              accountEmail: Text('tharoth@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/Tharoth.jpg'),
              ),
            ),

          ],
        ),
      )
    );
  }

}