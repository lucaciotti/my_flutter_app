import 'package:flutter/material.dart';
// import 'package:carousel/carousel.dart';

import 'package:flutter_app/widgets/box_widget.dart';
import 'package:flutter_app/pages/tabs/pubication_tab.dart';
import 'package:flutter_app/pages/tabs/about_tab.dart';
import 'package:flutter_app/pages/tabs/video_tab.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  int _bottomNavBarIndex = 0;
  PublicationTab pubTab;
  AboutTab aboutTab;
  VideoTab videoTab;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    pubTab = PublicationTab();
    aboutTab = AboutTab();
    videoTab = VideoTab();
    pages = [pubTab, videoTab, aboutTab];
    currentPage = pubTab;
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[ new Container(color: Colors.white70, child: Image.asset('assets/images/logo.png', width: 35.0, fit: BoxFit.cover),), Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)), Text('Krona Koblenz', style: TextStyle(fontSize: 20.0),),]),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white70,
      
      body: currentPage,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._bottomNavBarIndex,
        onTap: (index) {
          setState(() {
            this._bottomNavBarIndex = index;
            this.currentPage = pages[index];
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text('Pubblicazioni'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slideshow),
            title: Text('Video'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('About'),
          ),
        ]
      ),
    );
  }
}