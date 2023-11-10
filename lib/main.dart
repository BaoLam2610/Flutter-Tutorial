import 'package:flutter/material.dart';
import 'package:tutorial/components/demo_button.dart';
import 'package:tutorial/components/demo_container.dart';
import 'package:tutorial/components/demo_row_column.dart';
import 'package:tutorial/components/demo_sized_box.dart';

import 'components/demo_text.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "InterTight", // config all text font family
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 20,
            centerTitle: true,
            title: const Text("This is app bar"),
            backgroundColor: Colors.cyan,
          ),
          body: ColumnWidget(),
            // SizedBoxWidget(),
          /*const Column(
            children: [
              // LoadingDialog(false),
              // Text("Hello World"),
              // Counter(),
              // TextWidget(),
              // RichTextWidget(),
              // TextWithIconWidget(),
              // TextCopyWidget(),
              // CardWidget(),
              // ButtonWidget(),
              // ButtonIconWidget(),
              // DisableButtonWidget(),
              // ElevatedButtonWidget(),
              // OutlinedButtonWidget(),
              // ContainerWidget(),
              SizedBoxWidget(),
            ],
          ),*/
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

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(20),
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        //EdgeInsets.all(20)
        //EdgeInsets.symmetric(vertical: 20)
        //EdgeInsets.only(left: 20)
        child: Text(
          "This is Card Widget!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
