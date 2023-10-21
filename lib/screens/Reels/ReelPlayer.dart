import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPlayer extends StatefulWidget {
  ReelsPlayer(
      {super.key,
      required this.url,
      required this.currentindex,
      required this.scrolldindex});
  var url;
  int currentindex;
  int scrolldindex;

  @override
  State<ReelsPlayer> createState() => _ReelsPlayerState();
}

class _ReelsPlayerState extends State<ReelsPlayer> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inizilizePlayer();
  }

  Future inizilizePlayer() async {
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url));

    await Future.wait([
      videoPlayerController.initialize().then((value) {
        videoPlayerController.setLooping(true);
      })
    ]);
    print("aspetratio : ${videoPlayerController.value.aspectRatio}");

    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    (widget.currentindex == widget.scrolldindex)
        ? videoPlayerController.play()
        : videoPlayerController
            .pause()
            .then((value) => videoPlayerController.seekTo(Duration.zero));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        child: Stack(fit: StackFit.expand, children: [
          videoPlayerController.value.isInitialized
              ? FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: videoPlayerController.value.size.width,
                    height: videoPlayerController.value.size.height,
                    child: Stack(children: [
                      VideoPlayer(videoPlayerController),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                              height: 8,
                              child: VideoProgressIndicator(
                                videoPlayerController,
                                allowScrubbing: true,
                                colors: VideoProgressColors(
                                    playedColor: Colors.white),
                              )))
                    ]),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                ))
        ]),
      ),
    );
  }
}
