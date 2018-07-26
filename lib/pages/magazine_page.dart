import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';

class MagazinePage extends StatefulWidget {
  /* final String _magType;
  final String _title;

  MagazinePage(this._magType, this._title); */

  @override
  State createState() => new MagazinePageState();
}

class MagazinePageState extends State<MagazinePage> {

  Map data;
  List docs;

  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("http://search.issuu.com/api/2_0/document?q=title:kiakkiera&username=Krona-Koblenz&pageSize=50&startIndex=0&sortBy=epoch+asc&responseParams=*"),
      headers: {
        "Accept": "application/json"
      }
    );
    data = json.decode(response.body);
    docs = data['response']['docs'];
    docs.forEach((doc) => print(doc['title']+' '+doc['docname'])); 
    
    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST Kiakkiera'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: getData,
        ),
      ),
    );
  }
}

