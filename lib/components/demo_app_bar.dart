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

class AppBarCollapseWidget extends StatelessWidget {
  const AppBarCollapseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Demo'),
              background: Image.network(
                'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarTabLayoutWidget extends StatelessWidget {
  const AppBarTabLayoutWidget({super.key});

  SliverAppBar showSliverAppBar(String screenTitle) {
    return SliverAppBar(
      backgroundColor: Colors.purple,
      floating: true,
      pinned: true,
      snap: false,
      title: Text(screenTitle),
      bottom: const TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: 'Setting',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: TabBarView(
          children: [
            // This CustomScrollView display the Home tab content
            CustomScrollView(
              slivers: [
                showSliverAppBar('Kindacode Home'),
                // Anther sliver widget: SliverList
                SliverList(
                  delegate: SliverChildListDelegate([
                    const SizedBox(
                      height: 400,
                      child: Center(
                        child: Text(
                          'Home Tab',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Container(
                      height: 1500,
                      color: Colors.green,
                    ),
                  ]),
                ),
              ],
            ),
            // This shows the Settings tab content
            CustomScrollView(
              slivers: [
                showSliverAppBar('Settings Screen'),
                // Show other sliver stuff
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      height: 600,
                      color: Colors.blue[200],
                      child: const Center(
                        child: Text(
                          'Settings Tab',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Container(
                      height: 1200,
                      color: Colors.pink,
                    ),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
