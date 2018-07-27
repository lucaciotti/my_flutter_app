import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class BoxWidget extends StatelessWidget {

  final String _title;
  final String _urlImage;
  final String _route;

  BoxWidget(this._title, this._urlImage, this._route);

  openBrowserTab(url) async {
    await FlutterWebBrowser.openWebPage(url: url, androidToolbarColor: Colors.deepPurple);
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(            
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
          ),
          Container(
            color: Colors.black87,
            child: Center(
              child: Text(
                this._title,
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
            ),
            height: 35.0,
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(this._route),
            child: Container(
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          this._urlImage)),
                  border: Border(bottom: BorderSide(width: 2.0))),
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
