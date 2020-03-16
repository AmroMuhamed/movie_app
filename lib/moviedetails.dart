  import 'dart:collection';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class movieDetails extends StatefulWidget {
  Map movieList  ;
  movieDetails(this.movieList);

  movieDetailsState createState() => movieDetailsState();
}

class movieDetailsState extends State<movieDetails> {


  LinkedHashSet<String> mypics;
  LinkedHashSet<String> actorname;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    mypics=widget.movieList['actorspic'];
    actorname=widget.movieList['actorsname'];



  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(.9),
      ),
      body: Container(
        color: Colors.black.withOpacity(.9),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:
                  Image.asset(
                    widget.movieList['moviepic'],
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),),
                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              height: 170,
                              width: 120,
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),child: Image.asset(
                                widget.movieList['moviepicc'],
                                fit: BoxFit.fill,
                              ),),
                            )),
                        Expanded(
                          child: ListTile(
                              title: Text(
                                widget.movieList['moviename'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.amber),
                              ),
                              subtitle: Text(
                                widget.movieList['moviedes'],
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add_circle_outline),
                              label: Text("Download"),
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          Expanded(
                            child: FlatButton.icon(
                              onPressed: () {

                              },
                              icon: Icon(Icons.play_arrow),

                              label: Text("Play now"),
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Divider(
                        color: Colors.white,
                        height: .3,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Text(
                                "MOVIE INFO",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(20, 0, 5, 3),
                          child: Text(
                            "Rating: ${widget.movieList['Rating']}",textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),

                        Container(
                          child:Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 3),
                            child: Text(
                              "Genre:	${widget.movieList['Genre']}",textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          child: Padding(

                            padding: EdgeInsets.fromLTRB(20, 0, 0, 5  ),
                            child: Text(
                              "Runtime:	${widget.movieList['Runtime']}",textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Row(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Text(
                                "Cast",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.black12,
                          height: 255,
                          alignment: Alignment.center,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) => DynamicWidget(mypics.elementAt(index),actorname.elementAt(index)),
                            itemCount: mypics.length,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DynamicWidget extends StatelessWidget {
  String pics,names;

  DynamicWidget(this.pics,this.names);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5),),
            Container(
              height: 210,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(8.0),child: Image.asset(
               pics,
                fit: BoxFit.fill,

              ),),
            ),
            Container(
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  names,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
    width: 200,);
  }
}
