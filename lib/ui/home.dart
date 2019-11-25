import 'package:flutter/material.dart';
import 'package:clone_instagram/ui/search.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {

      if (index == 1) {
        Navigator.of(context).push(_createRoute());
      }

      _selectedIndex = index;
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Search(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            InkWell(
                onTap: () {
                },
                child: Icon(
                    Icons.camera_alt, color: Colors.black
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 130.0,
                )
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: InkWell(
                        onTap: () {
                          print('testeee');
                        },
                        child: Icon(
                            Icons.tv, color: Colors.black
                        )
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        print('testeee');
                      },
                      child: Icon(
                          Icons.send, color: Colors.black
                      )
                  ),
                ],
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                          _buildStories(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
              _buildPost(),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildStories() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: 62.0,
                height: 62.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage(
                            'assets/images/avatar.png'
                        )
                    )
                )
            ),
            Text(
              'Carl Jo...',
              style: TextStyle(fontSize: 11.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPost() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFEBEBEB)),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(14.0, 10.0, 0.0, 0.0),
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage(
                                  'assets/images/avatar.png'
                              )
                          )
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Carl Jonhson',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 8.0, 15.0, 0.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Image.asset(
                  'assets/images/post.jpg'
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 10.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 24.0,
                    )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 10.0),
                    child: Icon(
                      Icons.comment,
                      color: Colors.black,
                      size: 24.0,
                    )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 10.0),
                    child: Icon(
                      Icons.send,
                      color: Colors.black,
                      size: 24.0,
                    )
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0,10.0, 10.0),
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}