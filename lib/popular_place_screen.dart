import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Popular Place'),

      ),
      body: new ListView.builder(
        itemBuilder: (context, index){
          return new Padding(
            padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: new Column(
                children: <Widget>[

                  new ClipRRect(
                     child: Image.network('https://images.vidi.co/destinations/images/000/000/027/original/siem2.jpg?1549347502'),
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(16.0),
                       topRight: Radius.circular(16.0),
                     ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(16.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Angkor Wat'.toUpperCase(),
                        style: Theme.of(context).textTheme.title,
                        ),
                        new SizedBox(height: 16.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Location'),
                            Text('Views'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  
}