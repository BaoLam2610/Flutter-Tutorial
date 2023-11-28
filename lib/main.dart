import 'package:flutter/material.dart';
import 'package:tutorial/components/demo_app_bar.dart';
import 'package:tutorial/components/demo_row_column_expanded_flexible.dart';
import 'package:tutorial/components/demo_stack.dart';
import 'package:tutorial/components/demo_text_field.dart';
import 'package:tutorial/ui/intro_screen.dart';
import 'package:tutorial/ui/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "InterTight", // config all text font family
      ),
      home: const DemoAppBar(),
      // const DemoUI(),
      // const DemoWidget(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DemoAppBar extends StatelessWidget {
  const DemoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //  const AppBarTabLayoutWidget();
    const AppBarCollapseWidget();
  }
}

class DemoWidget extends StatelessWidget {
  const DemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          centerTitle: true,
          title: const Text("This is app bar"),
          backgroundColor: Colors.cyan,
        ),
        body: TextFieldWidget(),
        // FlexibleWidget(),
        //StackWidget(),
        //ExpandedWidget(),
        //ColumnWidget(),
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
    );
  }
}

class DemoUI extends StatelessWidget {
  const DemoUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroScreen(),
      // LoginWidget(),
    );
  }
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
