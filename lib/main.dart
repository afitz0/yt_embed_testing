import 'package:flutter/material.dart';
// import 'package:multimedia_embeds/media_widgets/ext_player.dart';
import 'package:multimedia_embeds/media_widgets/youtube_player.dart';
import 'package:multimedia_embeds/media_widgets/video_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          YtPlayer(),
          // ExtPlayer(),
          VideoPlayer(),
        ],
      ),
    );
  }
}
