import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_web_browser/flutter_web_browser.dart';

import 'package:flutter_app/widgets/heading_box.dart';

Map data;
Map data2;
List docs;

class Magazine {
  final String username;
  final double rating;
  final String description;
  final String title;
  final int pagecount;
  final String epoch;
  final String docname;
  final String documentId;

  Magazine(
      {this.username,
      this.rating,
      this.description,
      this.title,
      this.pagecount,
      this.epoch,
      this.docname,
      this.documentId});

  factory Magazine.fromJson(Map<String, dynamic> json) {
    print(json['title']);
    return Magazine(
      username: json['username'],
      rating: json['rating'],
      description: json['description'],
      title: json['title'],
      pagecount: json['pagecount'],
      epoch: json['epoch'],
      docname: json['docname'],
      documentId: json['documentId'],
    );
  }
}

List<Magazine> parseMagazines(String responseBody) {
  data = json.decode(responseBody);
  docs = data['response']['docs'];
  return docs.map<Magazine>((json) => Magazine.fromJson(json)).toList();
}

Future<List<Magazine>> getData(magType) async {
  var response = await http.get(
      Uri.encodeFull(
          "http://search.issuu.com/api/2_0/document?q=title:"+magType+"&username=Krona-Koblenz&pageSize=50&startIndex=0&sortBy=epoch+asc&responseParams=*"),
      headers: {"Accept": "application/json"});

  if (response.statusCode == 200) {
    return compute(parseMagazines, response.body);
  } else {
    throw Exception('Failed to load magazines');
  }
}

class MagazinePage extends StatefulWidget {
  final String _magType;
  final String _title;
  final String _netImage;

  MagazinePage(this._magType, this._title, this._netImage);

  @override
  State createState() => new MagazinePageState();
}

class MagazinePageState extends State<MagazinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
        backgroundColor: Colors.black,
      ),
      body: Column(children: <Widget>[
          HeadingBox(widget._netImage),
          FutureBuilder<List<Magazine>>(
            future: getData(widget._magType),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              return snapshot.hasData
                  ? Flexible( child: MagazinesList(magazines: snapshot.data), )
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ]),
    );
  }
}

class MagazinesList extends StatelessWidget {
  final List<Magazine> magazines;

  MagazinesList({Key key, this.magazines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: magazines.length,
      itemBuilder: (context, index) {
        return new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(magazines[index].title),
              onTap: () => openBrowserTab('https://issuu.com/' +
                  magazines[index].username +
                  '/docs/' +
                  magazines[index].docname +
                  '?mode=window&backgroundColor=%23222222'),
            ),
            new Divider(
              height: 2.0,
            ),
          ],
        );
      },
    );
  }
}

openBrowserTab(url) async {
  await FlutterWebBrowser.openWebPage(
      url: url, androidToolbarColor: Colors.deepPurple);
}
