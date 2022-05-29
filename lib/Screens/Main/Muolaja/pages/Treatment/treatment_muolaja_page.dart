import 'package:flutter/material.dart';

class TreatmentPage extends StatelessWidget {
  const TreatmentPage({Key? key}) : super(key: key);

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
                onPressed: () {},
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
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
