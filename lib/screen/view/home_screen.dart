import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class Video_Screen extends StatefulWidget {
  const Video_Screen({Key? key}) : super(key: key);

  @override
  State<Video_Screen> createState() => _Video_ScreenState();
}

class _Video_ScreenState extends State<Video_Screen> {
  videoProvider? video_providerF;
  videoProvider? video_providerT;

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<videoProvider>(context, listen: false).initVideo();
  // }

  @override
  Widget build(BuildContext context) {
    video_providerF = Provider.of<videoProvider>(context, listen: false);
    video_providerT = Provider.of<videoProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          // title: Text(
          //   "Videos",
          //   style: TextStyle(fontSize: 30, color: Colors.white),
          // ),
        ),
        body: Column(
          children: [
            Container(
              height: 700,
              width: double.infinity,
              child: Chewie(controller: video_providerT!.chewieController!),
            ),
          ],
        ),
      ),
    );
  }
}
