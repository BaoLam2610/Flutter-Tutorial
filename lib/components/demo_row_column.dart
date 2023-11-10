import 'package:flutter/material.dart';
import 'package:tutorial/components/demo_button.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      width: double.infinity,
      height: 400,
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonWithTextWidget("Button 1"),
          ButtonWithTextWidget("Button 2"),
          ButtonWithTextWidget("Button 3"),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      width: double.infinity,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ButtonWithTextWidget("Button 1"),
          ButtonWithTextWidget("Button 2"),
          ButtonWithTextWidget("Button 3"),
        ],
      ),
    );
  }
}

