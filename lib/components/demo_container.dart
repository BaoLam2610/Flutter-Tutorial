import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      width: double.infinity,
      // 100
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        // or Circular shape
        border: Border.all(color: Colors.white, width: 5),
        // Border normal
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        // Border radius
        gradient: const LinearGradient(
            colors: [Colors.black87, Colors.red]), // Gradient
      ),
      transform: Matrix4.rotationZ(-0.1),
      child: const Text("This is a container"),
    );
  }
}
