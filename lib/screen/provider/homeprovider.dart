import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoProvider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  List Images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
  ];
  List Video = [
    "assets/videos/1.mp4",
    "assets/videos/2.mp4",
    "assets/videos/3.mp4",
    "assets/videos/4.mp4",
    "assets/videos/5.mp4",
    "assets/videos/6.mp4",
    "assets/videos/7.mp4",
  ];

  void initVideo(String Video) {
    videoPlayerController = VideoPlayerController.asset("${Video}");
    videoPlayerController!.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false);
  }
}
