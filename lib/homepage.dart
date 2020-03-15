import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymovieapp/moviedetails.dart';


enum WidgetMarker { Home, Category }

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var movieList = <Map>[];
  var comedyList = <Map>[];
  var adventureList = <Map>[];
  var horrorList = <Map>[];
  bool test = false;
  WidgetMarker selectedWidgetMarker = WidgetMarker.Home;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    movieList = [
      {
        'moviename': 'Bad boys for life',
        'moviepic': 'images/bad boys for life.jpg',
        'moviepicc': 'images/bad boys for lifee.jpg',
        'moviedes':
            'The Bad Boys Mike Lowrey (Will Smith) and Marcus Burnett (Martin Lawrence) are back together for one last ride in the highly anticipated Bad Boys for Life.',
        'Rating':
            'R (for strong bloody violence, language throughout, sexual references and brief drug use)',
        'Genre': 'Action & Adventure ',
        'Runtime': '123 minutes',
        'actorspic': {
          'images/willsmith.jpg',
          'images/Martin Lawrence.jpg',
          'images/Vanessa Hudgens.png'
        },
        'actorsname': {
          'Will Smith',
          'Martin Lawrence',
          'Vanessa Hudgens',
        },
        'downloadlink': '',
        'playnowlink': '',
      },
      {
        'moviename': 'Dolittle',
        'moviepic': 'images/DOLITTLE.jpg',
        'moviepicc': 'images/DOLITTLEe.jpg',
        'moviedes':
            'fter losing his wife seven years earlier, the eccentric Dr. John Dolittle (Robert Downey Jr.), famed doctor and veterinarian of Queen Victoria\'s England, hermits himself away behind the high walls of Dolittle Manor with only his menagerie of exotic animals for company',
        'Rating': 'PG (for some action, rude humor and brief language)',
        'Genre': 'Action &  Comedy, Science Fiction & Fantasy',
        'Runtime': '106 minutes',
        'actorspic': {
          'images/Robert Downey Jr.jpg',
          'images/Antonio Banderas.jpg'
        },
        'actorsname': {'Robert Downey Jr.', 'Antonio Banderas'},
      },
      {
        'moviename': 'Gretel & Hansel',
        'moviepic': 'images/GRETEL & HANSEL.jpg',
        'moviepicc': 'images/GRETEL & HANSELl.jpg',
        'moviedes':
            'A long time ago in a distant fairytale countryside, a young girl (Sophia Lillis, It) leads her little brother (Sammy Leakey) into a dark wood in desperate search of food and work, only to stumble upon a nexus of terrifying evil.',
        'Rating':
            'PG-13 (for disturbing images/thematic content, and brief drug material)',
        'Genre': 'Horror, Mystery & Suspense, Science Fiction & Fantasy',
        'Runtime': '123 minutes',
        'actorspic': {
          'images/Sophia Lillis.jpg',
          'images/Alice Krige.jpg',
          'images/Jessica De Gouw.jpg'
        },
        'actorsname': {'Sophia Lillis', 'Alice Krige', 'Jessica De Gouw'},
      },
      {
        'moviename': 'The Rhythm Section',
        'moviepic': 'images/THE RHYTHM SECTION.jpg',
        'moviepicc': 'images/THE RHYTHM SECTIONn.jpg',
        'moviedes':
            'Blake Lively stars as Stephanie Patrick, an ordinary woman on a path of self-destruction after her family is tragically killed in a plane crash. When Stephanie discovers that the crash was not an accident, she enters a dark, complex world to seek revenge on those responsible and find her own redemption.',
        'Rating':
            'R (for violence, sexual content, language throughout, and some drug use)',
        'Genre': 'Action & Adventure, Mystery & Suspense',
        'Runtime': '109 minutes',
        'actorspic': {'images/Blake Lively.jpg', 'images/Alice Krige.jpg'},
        'actorsname': {'Blake Lively', 'Jude Law'},
      },
      {
        'moviename': 'weathering With You',
        'moviepic': 'images/WEATHERING WITH YOU.jpg',
        'moviepicc': 'images/WEATHERING WITH YOUu.jpg',
        'moviedes':
            'The summer of his high school freshman year, Hodaka runs away from his remote island home to Tokyo, and quickly finds himself pushed to his financial and personal limits',
        'Rating': 'NR (for suggestive material, some violence and language)',
        'Genre':
            'Action & Adventure, Animation, Anime & Manga, Art House & International, Science Fiction & Fantasy, Romance',
        'Runtime': '111 minutes',
        'actorspic': {'images/Kotaro Daigo.jpg', 'images/Nana Mori.jpg'},
        'actorsname': {'Kotaro Daigo', 'Nana Mori'},
      },
      {
        'moviename': 'The Gentlemen',
        'moviepic': 'images/WTHE GENTLEMEN.jpg',
        'moviepicc': 'images/WTHE GENTLEMENn.jpg',
        'moviedes':
            'THE GENTLEMEN follows American expat Mickey Pearson (Matthew McConaughey) who built a highly profitable marijuana empire in London',
        'Rating':
            'R (for violence, language throughout, sexual references and drug content)',
        'Genre': 'Action & Adventure, Comedy',
        'Runtime': '103 minutes',
        'actorspic': {
          'images/Matthew McConaughey.jpg',
          'images/Michelle Dockery.jpg'
        },
        'actorsname': {'Matthew McConaughey', 'Michelle Dockery'},
      },
      {
        'moviename': 'The Grudge',
        'moviepic': 'images/THE GRUDGE.jpg',
        'moviepicc': 'images/THE GRUDGEe.jpg',
        'moviedes':
            'After a young mother murders her family in her own house, a detective attempts to investigate the mysterious case, only to discover that the house is cursed by a vengeful ghost. Now targeted by the demonic spirits, the detective must do anything to protect herself and her family from harm.',
        'Rating':
            'R (for disturbing violence and bloody images, terror and some language)',
        'Genre': 'Horror',
        'Runtime': '94 minutes',
        'actorspic': {
          'images/Andrea Riseborough.jpg',
          'images/Demian Bichir.jpg'
        },
        'actorsname': {'Andrea Riseborough', 'Demian Bichir'},
      }
    ];
    for (int i = 0; i < movieList.length; i++) {
      String mystr = movieList[i]['Genre'];
      if (mystr.toLowerCase().contains('comedy')) comedyList.add(movieList[i]);

      if (mystr.toLowerCase().contains('adventure'))
        adventureList.add(movieList[i]);

      if (mystr.toLowerCase().contains('horror'))
        horrorList.add(movieList[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              test = false;
                              selectedWidgetMarker = WidgetMarker.Home;
                            });
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: 80,
                        child: (test != true)
                            ? Divider(
                                color: Colors.amber,
                                height: .3,
                              )
                            : null,
                      ),
                    ],
                  )),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              test = true;
                              selectedWidgetMarker = WidgetMarker.Category;
                            });
                          },
                          child: Text(
                            "Category",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: 80,
                        child: (test == true)
                            ? Divider(
                                color: Colors.amber,
                                height: .3,
                              )
                            : null,
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return getCustomContainer();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.Home:
        return getHomeContainer();
      case WidgetMarker.Category:
        return getCategoryContainer();
    }
    return getHomeContainer();
  }

  Widget getHomeContainer() {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 1) / 10;
    final double itemWidth = size.width / 2;

    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            color: Colors.white,
            height: .3,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              height: 200,
              color: Colors.black,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.fitHeight,
                images: [
                  Image.asset(
                    'images/bad boys for life.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/DOLITTLE.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/GRETEL & HANSEL.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/THE RHYTHM SECTION.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/WEATHERING WITH YOU.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/WTHE GENTLEMEN.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/THE GRUDGE.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
                autoplay: true,
                onImageTap: (position) {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                              movieDetails(movieList[position])));
                },
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 4.0,
                indicatorBgPadding: 3.0,
                dotIncreasedColor: Colors.black,
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Divider(
            color: Colors.white,
            height: .3,
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            height: 300,
            color: Colors.black,
            child: Container(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: movieList.length,
                padding: EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: (itemWidth / itemHeight),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return (InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Card(
                        color: Colors.black,
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              ),
                              Container(
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      movieList[index]['moviepic'],
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              Expanded(
                                child: ListTile(
                                    title: Text(
                                      movieList[index]['moviename'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.amber),
                                    ),
                                    subtitle: Text(
                                      movieList[index]['moviedes'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  movieDetails(movieList[index])));
                    },
                  ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCategoryContainer() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Divider(
              color: Colors.white,
              height: .3,
            ),
          ),
          Expanded(
            child: myCat(comedyList,'Comedy')
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Divider(
              color: Colors.white,
              height: .3,
            ),
          ),
          Expanded(
            child: myCat(adventureList, "Adventure")
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Divider(
              color: Colors.white,
              height: .3,
            ),
          ),
          Expanded(
            child:myCat(horrorList,'Horror')
          ),
        ],
      ),
    );
  }

  Widget myCat( var CustomList,String catname){
    return
      Container(
        color: Colors.black54,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(catname,
                      style:
                      TextStyle(color: Colors.white, fontSize: 20)),
                )
              ],
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CustomList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return (InkWell(
                      child: Card(
                        color: Colors.black,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                         color: Colors.black,
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.amber),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        CustomList[index]['moviepic'],
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                              ),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        width: 1, color: Colors.amber),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10))),
                                child: Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Text(
                                    CustomList[index]['moviename'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    movieDetails(CustomList[index])));
                      },
                    ));
                  },
                ),
              ),
            )
          ],
        ),
      );
  }
}
