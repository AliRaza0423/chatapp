import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;

  const VideoMessage({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(image: AssetImage('assets/images/Video Place Here.png')),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.play_arrow,size: 16,color: Colors.white,)
            ),
          ],
        ),
      ),
    );
  }
}