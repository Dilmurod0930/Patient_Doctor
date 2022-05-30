import 'package:flutter/material.dart';

class DrugHistoryPage extends StatelessWidget {
  const DrugHistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: const Text("\nAortic Aneurysm"),
              subtitle: const Text("Ma'murov Abbos\nFamily Clinic №42 "),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () { Navigator.pushNamed(context, "/drug_detals");},
              ),
            ),
            const Divider(height: 26, thickness: 2),
            ListTile(
              title: const Text("\nFibromyalgia"),
              subtitle: const Text("Nazirov Muxtor\nFamily Clinic №42"),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/drug_detals");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}