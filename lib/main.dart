import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("FLuttter Layout"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: (){},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              TopHomePage(),
              TopBesidePage(),
              MiddlePage(),
            ],
          ),
        )
    );
  }
}

class TopHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Row(
              children: <Widget>[
                Text(
                  "John McDonald",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 30,color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Icon(Icons.add_location),
                Text(
                  "Los Angles,CA",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20,color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopBesidePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.black45,
                        splashColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(fontSize: 20,color: Colors.lightBlue),
                        ),
                      ),
                    ) ,
                  ),

                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/mandalay.jpg',
                    fit: BoxFit.fill,
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
class MiddlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Text(
                  "34",
                  style: TextStyle(fontSize: 20,color: Colors.lightBlue),
                ),
                SizedBox(width: 50,),
                Text(
                  "1256",
                  style: TextStyle(fontSize: 20,color: Colors.lightBlue),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Text(
                  "Posts",
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                SizedBox(width: 30,),
                Text(
                  "Followers",
                  style: TextStyle(fontSize: 15,color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'images/yangon.jpg',
                  fit: BoxFit.fill,
                  width: 80 ,
                  height: 150 ,
                ),
                Image.asset(
                  'images/mandalay.jpg',
                  fit: BoxFit.fill,
                  width: 80 ,
                  height: 150 ,
                ),
                Image.asset(
                  'images/bagan.jpg',
                  fit: BoxFit.fill,
                  width: 80 ,
                  height: 150 ,
                ),
                Image.asset(
                  'images/innlay.jpg',
                  fit: BoxFit.fill,
                  width: 80 ,
                  height: 150 ,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.verified_user),
                Icon(Icons.phone),
                Icon(Icons.navigation),
                Icon(Icons.share),
                Icon(Icons.add_alert),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 370,
                  height: 1,
                  child: RaisedButton(
                    onPressed: null,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
            child: Column(
              children: <Widget>[
                Text(
                  'About',
                  style: TextStyle(fontSize: 20,color: Colors.black,),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: TextStyle(fontSize: 15,color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
