import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  final String mealVideoUrl;
  const YoutubeVideoPlayer({super.key, required this.mealVideoUrl});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late bool isPlaying, isMute;
  late String url = widget.mealVideoUrl;
  late YoutubePlayer youtubePlayer;
  late YoutubePlayerController _controller;
  late String id;

  @override
  void initState() {
    super.initState();
    isMute = false;
    id = YoutubePlayer.convertUrlToId(url) ?? "";
    _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    youtubePlayer = YoutubePlayer(
      controller: _controller,
    );
    isPlaying = _controller.value.isPlaying;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        youtubePlayer,
        const SizedBox(
          height: 8,
        ),
        buttonRowBuilder(),
      ],
    );
  }

  buttonRowBuilder() {
    double size = 35;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if (_controller.value.position <= const Duration(seconds: 10)) {
              _controller.seekTo(const Duration(seconds: 0));
            } else {
              var p = _controller.value.position - const Duration(seconds: 10);
              _controller.seekTo(p);
            }
          },
          icon: const Icon(
            Icons.first_page,
          ),
          iconSize: size,
        ),
        IconButton(
          onPressed: () {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
            setState(() {
              isPlaying = !isPlaying;
            });
          },
          icon: isPlaying ? const Icon(Icons.pause) : Icon(Icons.play_arrow),
          iconSize: size,
        ),
        IconButton(
          onPressed: () {
            var newPostion = _controller.value.position + Duration(seconds: 10);
            _controller.seekTo(newPostion);
          },
          icon: const Icon(Icons.last_page),
          iconSize: size,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
