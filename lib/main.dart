import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 20,
            centerTitle: true,
            title: const Text("This is app bar"),
            backgroundColor: Colors.cyan,
          ),
          body: const Center(
            child: Column(
              children: [
                LoadingDialog(false),
                Text("Hello World"),
                Counter(),
                TextWidget(),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LoadingDialog extends StatelessWidget {
  final bool isLoading;

  const LoadingDialog(this.isLoading, {super.key});

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const CircularProgressIndicator();
    } else {
      return const SizedBox.shrink();
    }
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = 0;
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _increment,
      child: Text(_count.toString()),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type "
      "specimen book. It has survived not only five centuries, but also the leap into "
      "electronic typesetting, remaining essentially unchanged. It was popularised in "
      "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
      "and more recently with desktop publishing software like Aldus PageMaker including "
      "versions of Lorem Ipsum.",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 1.5,
    );
  }
}
