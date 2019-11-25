import 'package:flutter/material.dart';
import 'package:clone_instagram/ui/home.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {

      if (index == 0) {
        Navigator.of(context).push(_createRoute());
      }

      _selectedIndex = index;
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
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
      body: Text(''),
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
}
