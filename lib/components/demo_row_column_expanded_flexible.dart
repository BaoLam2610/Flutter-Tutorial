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
        mainAxisSize: MainAxisSize.min,
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

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.redAccent,
            height: 150,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            height: 150,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
            height: 150,
          ),
        )
      ],
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            height: 100,
            color: Colors.redAccent,
          ),
        ),
        Flexible(
          flex: 8,
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.greenAccent,
          ),
        )
      ],
    );
  }
}
