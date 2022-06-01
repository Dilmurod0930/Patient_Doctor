import 'package:flutter/material.dart';
import 'package:med/Screens/Main/Muolaja/pages/DrugHistory/drug_history_muolaja.dart';
import 'package:med/Screens/Main/Muolaja/pages/MedicalHistory/medical_history_muolaja_page.dart';
import 'package:med/Screens/Main/Muolaja/pages/Treatment/treatment_muolaja_page.dart';
import 'package:med/core/constants/color_const.dart';

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
      appBar: AppBar(backgroundColor: ColorConst.white,elevation: 0,
        leading: const CircleAvatar(radius: 7,backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.black,), ),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: const [Icon(Icons.notifications, size: 32,color: Colors.grey,)],
        bottom: TabBar(
          controller: tabController,indicatorColor: ColorConst.grey,
          tabs: const [
            Tab(icon: Text("Treatment", style: TextStyle(color: Colors.grey))),
            Tab(icon: Text("Medical history",style: TextStyle(color: Colors.grey))),
            Tab(icon: Text("Drug history",style: TextStyle(color: Colors.grey)))
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
