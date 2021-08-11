// import 'package:flutter/material.dart';
// import 'package:ext_video_player/ext_video_player.dart';

// class ExtPlayer extends StatefulWidget {
//   const ExtPlayer({Key? key}) : super(key: key);

//   @override
//   _ExtPlayerState createState() => _ExtPlayerState();
// }

// class _ExtPlayerState extends State<ExtPlayer> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Ext Player'),
//           _controller.value.initialized
//               ? AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: VideoPlayer(_controller),
//                 )
//               : Container(),
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _controller.value.isPlaying
//                     ? _controller.pause()
//                     : _controller.play();
//               });
//             },
//             icon: Icon(
//               _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
