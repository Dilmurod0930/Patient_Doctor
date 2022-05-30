import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med/Screens/Main/bloc/main_cubit.dart';
import 'package:med/Screens/Main/bloc/main_state.dart';
import 'package:med/core/components/text_befor_comp.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/widgets/sing_appBar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    int gender = context.watch<HomeCubit>().gender;
    final nameConroller = context.watch<HomeCubit>().nameController;
    final addressConroller = context.watch<HomeCubit>().addressController;
    final addressController = context.watch<HomeCubit>().dataBirhtController;
    final emailController = context.watch<HomeCubit>().emailController;
    final phoneNumberController =
        context.watch<HomeCubit>().phonenumberController;
    bool profileVisibl = context.watch<HomeCubit>().profileVisibility;
    return Scaffold(
      body: BlocBuilder<HomeCubit, MainState>(
        builder: (context, state) {
          if (state is InitialMain) {
            return Column(
              children: [
                signAppBar(context, "My Profile"),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        const CircleAvatar(
                          radius: 60,
                          // backgroundImage: AssetImage("assets/images/id.png"),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                                color: ColorConst.kPimaryColor,
                                borderRadius: BorderRadius.circular(7)),
                            child: Text(
                              "Upload new picture",
                              style: TextStyle(
                                  fontSize: FontConst.mediumFont,
                                  color: ColorConst.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        InkWell(
                          child: Text(
                            "Delete photo",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: FontConst.mediumFont,
                                color: ColorConst.red),
                          ),
                          onTap: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textBeforeInput("ID"),
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    color: ColorConst.black.withOpacity(0.1),
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Text("2343534534"),
                                      ),
                                      InkWell(
                                        child: SvgPicture.asset(
                                            "assets/icons/copy.svg"),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              textBeforeInput("Full name"),
                              profileInput(nameConroller),
                              textBeforeInput("Date of birth"),
                              TextFormField(
                                // initialValue: "24.11.2000",
                                // controller: cont,
                                decoration: InputDecoration(
                                  prefix: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: SvgPicture.asset(
                                        "assets/icons/calendar-event.svg"),
                                  ),
                                  border: inputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.length < 4) {
                                    return "4 tadan kam bo'lmasligi lozim";
                                  }
                                },
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              textBeforeInput("Gender"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genderMethods(context, gender, 0, "Male"),
                                  genderMethods(context, gender, 1, "Female"),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              oneGender(context, gender),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              textBeforeInput("Address"),
                              profileInput(addressController),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              textBeforeInput("Phone number"),
                              profileInput(phoneNumberController),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              textBeforeInput("Email"),
                              profileInput(emailController),
                              SwitchListTile.adaptive(
                                title: const Text("Profile visibilty"),
                                value: profileVisibl,
                                onChanged: (v) {
                                  context.read<HomeCubit>().changeProfileVis();
                                },
                              ),
                              const Divider(thickness: 2),
                              textBeforeInput("By switching on you let doctors access all your personal informations"),
                            const SizedBox(height: 89),
                               Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                    color: ColorConst.kBotton.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child:TextButton(child: const  Text("Add Another Account", style: TextStyle(color: ColorConst.kBotton),),onPressed: (){},)
                                ),
                              ),
                              textBeforeInput("You can add another accounts, for example, for your children or disabled relatives"),
                              const SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                    color: ColorConst.red.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child:TextButton(child: const  Text("Log out", style: TextStyle(color: Colors.red),),onPressed: (){},)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else if (state is LoadingMain) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is ErrorMain) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return const Text("State da Erorr");
          }
        },
      ),
    );
  }

  TextFormField profileInput(controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: inputBorder(),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "4 tadan kam bo'lmasligi lozim";
        }
      },
    );
  }

  InkWell oneGender(BuildContext context, int gender) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          color: gender == 2
              ? ColorConst.blue.withOpacity(0.2)
              : Colors.transparent,
          border: Border.all(
            color: gender == 2
                ? ColorConst.blue
                : ColorConst.black.withOpacity(0.4),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: genderType(gender, 2, "Prefer not to say "),
      ),
      onTap: () {
        context.read<HomeCubit>().selectGender(2);
      },
    );
  }

  InkWell genderMethods(BuildContext context, int gender, int index, text) {
    return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: gender == index
              ? ColorConst.blue.withOpacity(0.1)
              : Colors.transparent,
          border: Border.all(
            color: gender == index
                ? ColorConst.blue
                : ColorConst.black.withOpacity(0.4),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: genderType(gender, index, text),
      ),
      onTap: () {
        context.read<HomeCubit>().selectGender(index);
      },
    );
  }

  Row genderType(int gender, int index, text) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: gender == index ? 5 : 1,
              color: gender == index
                  ? ColorConst.blue
                  : ColorConst.black.withOpacity(0.6),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: TextStyle(fontSize: FontConst.mediumFont + 2),
          ),
        )
      ],
    );
  }

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
    );
  }
}
