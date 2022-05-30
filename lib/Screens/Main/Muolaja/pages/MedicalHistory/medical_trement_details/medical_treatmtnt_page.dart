import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/widgets/sing_appBar_widget.dart';

class MedicalTreatmentPage extends StatefulWidget {
  const MedicalTreatmentPage({Key? key}) : super(key: key);

  @override
  State<MedicalTreatmentPage> createState() => _MedicalTreatmentPageState();
}

class _MedicalTreatmentPageState extends State<MedicalTreatmentPage> {
  List data = ["Salicylic", "Calcipotriol", "Tazorac"];
  List ml = ["250", "500", "100"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          signAppBar(context, "Tretment details "),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: CircleAvatar(
                            child: const Icon(Icons.person, size: 88),
                            radius: MediaQuery.of(context).size.height * 0.07),
                      ),
                    ),
                    Center(
                        child: Text(
                      "Abdullajonov murod",
                      style: TextStyle(
                          fontSize: FontConst.extraLargeFont,
                          fontWeight: FontWeight.w600),
                    )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Center(
                        child: Text(
                      "Dermotologidt",
                      style: TextStyle(fontSize: FontConst.mediumFont),
                    )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    textTreatDetl("Clinic"),
                    textTreatDetl2("Clinic medion"),
                    textTreatDetl("Cinic location"),
                    textTreatDetl2("Shayhontohur,district"),
                    textTreatDetl("Start date"),
                    textTreatDetl2("21.01.2022"),
                    textTreatDetl("End date"),
                    textTreatDetl2("30.01.2022"),
                    textTreatDetl("Complaints date"),
                    textTreatDetl2("Redness on the skin"),
                    textTreatDetl("Diagnosis"),
                    textTreatDetl2("Skin psoriasis"),
                    textTreatDetl("Treatment"),
                    textTreatDetl2(
                        "Diet ,Ozone therapy/6 days,tivortin 100.0/6 days"),
                    textTreatDetl("Analysis"),
                    const Text('Blood'),
                    textTreatDetl2("Drugs being taken"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return drugBeingMethod(
                              "${data[index]}", "${ml[index]} ml");
                        },
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                          "You will need a blood test for your doctor to find out if you have hypokalemia. They will ask you about your health history. They’ll want to know if you’ve had any illness that involved vomiting or diarrhea. They’ll ask about any conditions you might have that could be causing it.Since low potassium sometimes can affect your blood pressure, your doctor will check that, too."),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ],
      ),
    );
  }

  drugBeingMethod(text1, text2) {
    return InkWell(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: FontConst.mediumFont + 2,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    text2,
                    style: TextStyle(fontSize: FontConst.mediumFont - 2),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: FontConst.mediumFont + 12,
                    color: ColorConst.black.withOpacity(0.5),
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 24,
            color: ColorConst.black.withOpacity(0.5),
          )
        ],
      ),
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          context: context,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.33),
                          child: Text(
                            "Salicylic",
                            style: TextStyle(
                              fontSize: FontConst.mediumFont + 2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Ok",
                          style: TextStyle(
                            fontSize: FontConst.mediumFont,
                            fontWeight: FontWeight.w600,
                            color: ColorConst.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: ColorConst.black.withOpacity(0.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textTreatDetl("Drug name"),
                        textTreatDetl2("Salicylic"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        textTreatDetl("Dose"),
                        textTreatDetl2("250 mg"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        textTreatDetl("Taking dates(start-end)"),
                        textTreatDetl2("10-20"),
                        textTreatDetl("How many times"),
                        textTreatDetl2("2 times a day"),
                        textTreatDetl("Assosiated with"),
                        textTreatDetl2("Multiple sclerosis"),
                        textTreatDetl("Comments"),
                        textTreatDetl2("Commentsssss")
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  static textTreatDetl2(text) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontConst.mediumFont + 2,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  static Padding textTreatDetl(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Text(
        text,
        style: TextStyle(
          fontSize: FontConst.mediumFont,
          color: ColorConst.black.withOpacity(0.4),
        ),
      ),
    );
  }
}
