import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';
class FadeAnimation extends StatelessWidget {
  final double delayed;
  final Widget child;

  FadeAnimation(this.delayed,this.child);

  @override
  Widget build(BuildContext context) {
    final tween= MultiTrackTween(
        [
          Track("opacity").add(Duration(milliseconds: 600), Tween(begin:0.0,end:1.0)),
          Track("translateY").add(
            Duration(milliseconds: 500), Tween(begin: -30.0,end: 0.0),
            curve:Curves.easeOut,
          ),
        ]);
    return ControlledAnimation(
      delay: Duration(milliseconds:(500*delayed).round()),
      duration: tween.duration,
      tween: tween,
      child:child,
      builderWithChild: (context,child ,animation) => Opacity(
        opacity: animation["opacity"],
        child:Transform.translate(
          offset:Offset(0,animation["translateY"]),
          child:child,
        ),
      ),
    );
  }
}
