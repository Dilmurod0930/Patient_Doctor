import 'package:flutter/material.dart';
import 'package:med/Screens/Main/muolaja/pages/medical_history_muolaja_page.dart';
import 'package:med/Screens/Main/muolaja/pages/drug_history_muolaja.dart';
import 'package:med/Screens/Main/muolaja/pages/treatment_muolaja_page.dart';

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
        leading: const CircleAvatar(radius: 10, child: Icon(Icons.person)),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: const [Icon(Icons.notifications, size: 32)],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon: Text("Treatment")),
            Tab(icon: Text("Medical history")),
            Tab(icon: Text("Drug history"))
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          TreatmentPage(),
          MedicalHistoryPage(),
          DrugHistoryPage()
        ],
      ),
    );
  }
}
