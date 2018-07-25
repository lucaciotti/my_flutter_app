import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class BoxWidget extends StatelessWidget {

  openBrowserTab(url) async {
    await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.deepPurple);
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black87,
            child: Center(
              child: Text(
                'La Kiakkiera n°1',
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
            ),
            height: 35.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
          ),
          InkWell(
            onTap: () => openBrowserTab(
                'https://issuu.com/krona-koblenz/docs/la_kiakkiera_n1?mode=window&backgroundColor=%23222222'),
            child: Container(
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          'http://www.koblenz.it/wp-content/uploads/2012/07/www.koblenz.it/kiakkiera-top.jpg')),
                  border: Border(bottom: BorderSide(width: 2.0))),
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
