import 'package:flutter/material.dart';

class MuolajaPage extends StatefulWidget {
  const MuolajaPage({Key? key}) : super(key: key);

  @override
  State<MuolajaPage> createState() => _MuolajaPageState();
}

class _MuolajaPageState extends State<MuolajaPage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const  CircleAvatar(radius: 10),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: [Icon(Icons.notifications,size: 32,)],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon: Text("fsdffsdf")),
            Tab(icon: Text("sfsdf")),
            Tab(icon: Text("dkljfa"))
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.blue)
        ],
      ),
    );
  }
}
