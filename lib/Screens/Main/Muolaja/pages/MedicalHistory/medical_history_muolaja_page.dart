import 'package:flutter/material.dart';

class MedicalHistoryPage extends StatefulWidget {
  const MedicalHistoryPage({ Key? key }) : super(key: key);

  @override
  State<MedicalHistoryPage> createState() => _MedicalHistoryPageState();
}

class _MedicalHistoryPageState extends State<MedicalHistoryPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: const Text("\nAnthrax [Bacillus anthracis Infection]"),
              subtitle: const Text("Esther Howard\nEsther Howard "),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () { Navigator.pushNamed(context, "/details");},
              ),
            ),
            const Divider(height: 26, thickness: 2),
            ListTile(
              title: const Text("\nAdverse Childhood Experiences (ACE)"),
              subtitle: const Text("Jenny Wilson\nShox Nur Shifo Clinic"),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/details");
                },
              ),
            ),
            const Divider(height: 26, thickness: 2),
            ListTile(
              title: const Text("\nAspergillus Infection"),
              subtitle: const Text("Darrell Steward\nTashkent International Clinic"),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/details");
                },
              ),
            ),
            const Divider(height: 26, thickness: 2),
            ListTile(
              title: const Text("\nArthritis"),
              subtitle: const Text("Ralph Edwards\nFamily Clinic №42"),
              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/details");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}