import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: const Text("This is an app bar"),
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: const [
          // IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          // IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          // IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
