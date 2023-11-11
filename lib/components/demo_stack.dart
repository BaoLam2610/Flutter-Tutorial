import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.grey,
      child: Stack(
        // alignment: AlignmentDirectional.center,
        // fit: StackFit.passthrough,
        clipBehavior: Clip.none,
        children: [
          Container( // non-positioned
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.purpleAccent,
            ),
          ),
          Positioned( // positioned
            top: 20,
            right: 20,
            child: Container(
              height: 700,
              width: 200,
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}
