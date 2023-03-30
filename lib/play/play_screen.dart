import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../screen/provider/homeprovider.dart';

class Play_Screen extends StatefulWidget {
  const Play_Screen({Key? key}) : super(key: key);

  @override
  State<Play_Screen> createState() => _Play_ScreenState();
}

class _Play_ScreenState extends State<Play_Screen> {
  videoProvider? video_providerF;
  videoProvider? video_providerT;

  @override
  Widget build(BuildContext context) {
    video_providerT = Provider.of(context, listen: true);
    video_providerF = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            'Videos Player',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: video_providerF!.Video.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2)),
                child: InkWell(
                  onTap: () {
                    video_providerT!.initVideo(
                      video_providerT!.Video[index],
                    );
                    Navigator.pushNamed(context, 'second');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              "${video_providerT!.Images[index]}",
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
