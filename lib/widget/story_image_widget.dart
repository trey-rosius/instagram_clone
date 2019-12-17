import 'dart:ui';


import 'package:flutter/material.dart';


class StoryImageWidget extends StatelessWidget {
  final String image;
  final Function onLoaded;
  const StoryImageWidget({Key key,@required this.image,@required this.onLoaded}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return Container(
      color: Colors.redAccent,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(image,fit: BoxFit.fill,),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 75.0,
              sigmaY: 75.0,
            ),
            child: new Container(
                decoration:
                new BoxDecoration(color: Colors.white.withOpacity(0.5))),
          ),
         Image.asset(image,fit: BoxFit.fitHeight,)
        ],
      ),
    );
  }

}