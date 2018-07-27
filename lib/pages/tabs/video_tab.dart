import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class VideoTab extends StatefulWidget {
  @override
  VideoTabState createState() => new VideoTabState();
}


class VideoTabState extends State<VideoTab> {
  static String key = 'AIzaSyARaQ9Uf1cN7E8k7-oUV6bo_tdM2aCId2s';
  YoutubeAPI ytApi = new YoutubeAPI(key);
  List<YT_API> ytResult = [];

  launchVideo(id) {
    FlutterYoutube.playYoutubeVideoById(
      apiKey: "AIzaSyARaQ9Uf1cN7E8k7-oUV6bo_tdM2aCId2s",
      videoId: id,
      fullScreen: true //default false
    );
  }

  call_API() async {
    print('UI callled');
    String query = "kronakoblenz";
    ytResult = await ytApi.Search(query);
    setState(() {
      print('UI Updated');
    });
  }
  @override
  void initState() {
    super.initState();
    call_API();
    print('hello');
  }
  @override
  Widget build(BuildContext context) {
    //call_API();
    return new Container(
            child: ListView.builder(
                itemCount: ytResult.length,
                itemBuilder: (_, int index) => ListItem(index)
            ),
          );
  }
  Widget ListItem(index){
    return new Card(
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 7.0),
        padding: EdgeInsets.all(12.0),
        child: new InkWell( 
          onTap: () => launchVideo(ytResult[index].id),
          child: new Row(
          children: <Widget>[
            new Image.network(ytResult[index].thumbnail['default']['url'],),
            new Padding(padding: EdgeInsets.only(right: 20.0)),
            new Expanded(child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  ytResult[index].title,
                  softWrap: true,
                  style: TextStyle(fontSize:18.0),
                ),
                new Padding(padding: EdgeInsets.only(bottom: 1.5)),
                new Text(
                  ytResult[index].channelTitle,
                  softWrap: true,
                ),
                new Padding(padding: EdgeInsets.only(bottom: 3.0)),
                new Text(
                  ytResult[index].description,
                  softWrap: true,
                ),
              ]
            ))
          ],
        ),
        ),
      ),
    );
  }
}