import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/empty_screen.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/story/post_item.dart';
import 'package:instagram/story/storiesmodel.dart';
import 'package:instagram/story/story_item.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[

    HomePage(),
    EmptyScreen(),
    EmptyScreen(),
    EmptyScreen(),
    EmptyScreen()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.asset('assets/images/camera.png',color: Colors.white,),
         title: Text('Instagram',style: TextStyle(fontFamily: 'Billabong',color: Colors.white,fontSize: 30),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/igtv.png',color: Colors.white,width: 30,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/sent.png',color: Colors.white,width: 30,height: 20,),
          ),

        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,

          elevation: 0.0,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(Icons.home,color: Colors.white,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search,color: Colors.white,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.instagram,color: Colors.white,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart,color: Colors.white,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userAlt,color: Colors.white,),
              title: Text(''),
            ),
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),

    );
  }
}
