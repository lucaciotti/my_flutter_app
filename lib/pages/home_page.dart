import 'package:flutter/material.dart';
// import 'package:carousel/carousel.dart';

import 'package:flutter_app/pages/tabs/pubication_tab.dart';
import 'package:flutter_app/pages/tabs/about_tab.dart';
import 'package:flutter_app/pages/tabs/video_tab.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _bottomNavBarIndex = 0;
  PublicationTab pubTab;
  AboutTab aboutTab;
  VideoTab videoTab;
  List<Widget> pages;
  Widget currentPage;

  AnimationController _opacityController;
  Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    pubTab = PublicationTab();
    aboutTab = AboutTab();
    videoTab = VideoTab();
    pages = [pubTab, videoTab, aboutTab];
    currentPage = pubTab;

    /* _opacityController = new AnimationController(vsync: this,duration: const Duration(milliseconds: 800));
     _opacity = new CurvedAnimation(parent: _opacityController, curve: Curves.easeInOut)..addStatusListener((status) {
       if (status == AnimationStatus.completed) {
         _opacityController.reverse();
       } else if (status == AnimationStatus.dismissed) {
         _opacityController.forward();
       }
     });
     _opacityController.forward(); */
  }

  /* @override
  void dispose() {
    super.dispose();
    _opacityController.dispose();
  } */

  void _onHorizontalDrag(DragEndDetails details) {
    if(details.primaryVelocity == 0) return; // user have just tapped on screen (no dragging)

    if (details.primaryVelocity.compareTo(0) == -1) {
      print('dragged from left');
      setState(() {
            int index = this._bottomNavBarIndex==2 ? 0 : this._bottomNavBarIndex+1;
            this._bottomNavBarIndex = index;
            this.currentPage = pages[index];
            print(this._bottomNavBarIndex);
          });      
    } else {
      print('dragged from right');
      setState(() {
            int index = this._bottomNavBarIndex==0 ? 2 : this._bottomNavBarIndex-1;
            this._bottomNavBarIndex = index;
            this.currentPage = pages[index];
            print(this._bottomNavBarIndex);
          }); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          new Container(
            color: Colors.white70,
            child: Image.asset('assets/images/logo.png',
                width: 35.0, fit: BoxFit.cover),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Text(
            'Krona Koblenz',
            style: TextStyle(fontSize: 20.0),
          ),
        ]),
        backgroundColor: Colors.black,
      ),

      backgroundColor: Colors.white70,

      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) =>
            _onHorizontalDrag(details),
        child: currentPage
      ),

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
          ]),

    );
  }
}
