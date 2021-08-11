import 'package:flutter/material.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

class YtPlayer extends StatefulWidget {
  const YtPlayer({Key? key}) : super(key: key);

  @override
  _YtPlayerState createState() => _YtPlayerState();
}

class _YtPlayerState extends State<YtPlayer> {
  late YoutubePlayerController _ytController;
  final String _videoId = "S5aK3TIOnIw";

  @override
  void initState() {
    super.initState();
    _ytController = YoutubePlayerController(
      initialVideoId: _videoId,
      params: YoutubePlayerParams(autoPlay: false, showControls: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    YoutubePlayerIFrame player = YoutubePlayerIFrame();
    return Container(
      child: Center(
        child: YoutubePlayerControllerProvider(
          controller: _ytController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('YT Player'),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.8,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: player),
              ),
              YoutubeValueBuilder(builder: (context, value) {
                return IconButton(
                  onPressed: () => context.ytController.play(),
                  icon: value.isReady
                      ? Icon(Icons.play_arrow)
                      : Icon(Icons.cancel),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
