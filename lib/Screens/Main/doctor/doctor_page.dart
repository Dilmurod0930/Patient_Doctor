import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/mock/Doctor_Mock_data/doctor_mock_data.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  void initState() {
    super.initState();
  }

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
            color: ColorConst.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(92),
          ),
          child: Icon(
            Icons.person,
            color: ColorConst.grey,
          ),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/icon.png'),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorConst.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: ColorConst.black,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.builder( 
                padding: const EdgeInsets.all(8),
                itemCount: DoctorData.doctors.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile( 
                        leading: CircleAvatar(
                          radius: 33,
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/$index"),
                        ),
                        title: Text("${DoctorData.doctors[index]["name"]}"),
                        subtitle:
                            Text('${DoctorData.doctors[index]["typeDoctor"]}'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/main", (route) => false);
                          DoctorData.doctors[index];
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(height: 4, color: ColorConst.red),
            //  SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.6,
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(8),
            //     itemCount: DoctorData.doctors.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Card(
            //           child: ListTile(
            //             leading: CircleAvatar(
            //               radius: 33,
            //               backgroundImage: NetworkImage(
            //                   "https://source.unsplash.com/random/$index"),
            //             ),
            //             title: Text("${DoctorData.doctors[index]["name"]}"),
            //             subtitle:
            //                 Text('${DoctorData.doctors[index]["typeDoctor"]}'),
            //             trailing: const Icon(Icons.arrow_forward_ios),
            //             onTap: () {
            //               Navigator.pushNamedAndRemoveUntil(
            //                   context, "/muolaja", (route) => false);
            //               DoctorData.doctors[index];
            //             },
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
