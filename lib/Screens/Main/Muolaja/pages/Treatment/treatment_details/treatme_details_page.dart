import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/widgets/sing_appBar_widget.dart';

class TreatmentDetailsPage extends StatefulWidget {
  const TreatmentDetailsPage({Key? key}) : super(key: key);
  @override
  State<TreatmentDetailsPage> createState() => _TreatmentDetailsPageState();

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

class _TreatmentDetailsPageState extends State<TreatmentDetailsPage> {
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
                    TreatmentDetailsPage.textTreatDetl("Clinic"),
                    TreatmentDetailsPage.textTreatDetl2("Clinic medion"),
                    TreatmentDetailsPage.textTreatDetl("Cinic location"),
                    TreatmentDetailsPage.textTreatDetl2("Shayhontohur,district"),
                    TreatmentDetailsPage.textTreatDetl("Start date"),
                    TreatmentDetailsPage.textTreatDetl2("21.01.2022"),
                    TreatmentDetailsPage.textTreatDetl("End date"),
                    TreatmentDetailsPage.textTreatDetl2("30.01.2022"),
                    TreatmentDetailsPage.textTreatDetl("Complaints date"),
                    TreatmentDetailsPage.textTreatDetl2("Redness on the skin"),
                    TreatmentDetailsPage.textTreatDetl("Diagnosis"),
                    TreatmentDetailsPage.textTreatDetl2("Skin psoriasis"),
                    TreatmentDetailsPage.textTreatDetl("Treatment"),
                    TreatmentDetailsPage.textTreatDetl2(
                        "Diet ,Ozone therapy/6 days,tivortin 100.0/6 days"),
                    TreatmentDetailsPage.textTreatDetl("Analysis"),
                    const Text('Blood'),
                    TreatmentDetailsPage.textTreatDetl2("Drugs being taken"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return drugBeingMethod("", "100 ml");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05)
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
                        TreatmentDetailsPage.textTreatDetl("Drug name"),
                        TreatmentDetailsPage.textTreatDetl2("Salicylic"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        TreatmentDetailsPage.textTreatDetl("Dose"),
                        TreatmentDetailsPage.textTreatDetl2("250 mg"),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        TreatmentDetailsPage.textTreatDetl("Taking dates(start-end)"),
                        TreatmentDetailsPage.textTreatDetl2("10-20"),
                        TreatmentDetailsPage.textTreatDetl("How many times"),
                        TreatmentDetailsPage.textTreatDetl2("2 times a day"),
                        TreatmentDetailsPage.textTreatDetl("Assosiated with"),
                        TreatmentDetailsPage.textTreatDetl2("Multiple sclerosis"),
                        TreatmentDetailsPage.textTreatDetl("Comments"),
                        TreatmentDetailsPage.textTreatDetl2("Commentsssss")
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
}
