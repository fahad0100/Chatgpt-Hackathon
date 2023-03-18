import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';
import 'package:hackathon_chatgpt/app/widgets/Buttons/ButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/TextField/TextFiledCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/TextField/TextFiledPhoneCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextUtils(
                  text: "Person Information",
                  fontSize: 20,
                  isShadow: true,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFiledCustom(
                controller: controller.nameController,
                onChanged: (name) {
                  if (name.length > 2) {
                    controller.isNamewrite = true;
                  } else {
                    controller.isNamewrite = false;
                  }
                  controller.update();
                },
                hintText: 'Full Name',
                title: "NAME",
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8),
            //   child: TextFiledCustom(
            //     controller: controller.dataBrithdayController,
            //     hintText: '10/10/1994',
            //     title: "DATE OF BIRTHDAY",
            //   ),
            // ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 26, bottom: 10),
              child: TextUtils(
                  isShadow: true,
                  text: "Contact",
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFiledCustom(
                controller: controller.emailController,
                hintText: 'Urcv@gmail.com',
                title: "EMAIL",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFiledPhoneCustom(
                controller: controller.phoneController,
                title: "PHONE NUMBER",
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
              child: TextUtils(
                  isShadow: true,
                  text: "Address",
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFiledCustom(
                    width: Get.width / 2.2,
                    controller: controller.countryController,
                    hintText: 'Saudi Arabia',
                    title: "COUNTRY",
                  ),
                  TextFiledCustom(
                    controller: controller.cityController,
                    width: Get.width / 2.2,
                    hintText: 'Riyadh',
                    title: "CITY",
                  )
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
              child: TextUtils(
                  isShadow: true,
                  text: "Education",
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFiledCustom(
                controller: controller.universityController,
                title: "UNIVERSITY",
                hintText: 'Name of your university',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFiledCustom(
                controller: controller.universitySpecializationController,
                title: "SPECIALIZATION",
                hintText: 'Computer since',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFiledCustom(
                controller: controller.dataGraduationController,
                title: "DATE OF Graduation",
                hintText: '2017 - 2021',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 3,
                      child: TextFiledCustom(
                        controller: controller.postionInterstingController,
                        hintText: 'ِExample: Software engineering',
                        title: "Position interesting",
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {
                            if (controller
                                    .postionInterstingController.text.isEmpty ||
                                controller.postionInterstingController.text
                                        .length <
                                    2) {
                              return;
                            }
                            controller.listOFpostionIntersting.add(
                                controller.postionInterstingController.text);
                            controller.postionInterstingController.text = '';
                            controller.update();
                          },
                          alignment: Alignment.center,
                          iconSize: 40,
                          icon: const Icon(Icons.add)),
                    )
                  ],
                ),
              ),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      spacing: 5,
                      children: List.generate(
                        controller.listOFpostionIntersting.length,
                        (index) => InputChip(
                          label:
                              Text(controller.listOFpostionIntersting[index]),
                          deleteIconColor:
                              const Color.fromARGB(255, 222, 158, 112),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                              color: Color(0xffEBE1DA), width: 3),
                          onDeleted: () {
                            controller.listOFpostionIntersting.removeAt(index);
                            controller.update();
                          },
                        ),
                      ))),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 20),
              child: TextUtils(
                  text: "Experiences",
                  isShadow: true,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      spacing: 5,
                      children: List.generate(
                        controller.listOFexperiences.length,
                        (index) => InputChip(
                          label: Text(
                            controller.listOFexperiences[index],
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            softWrap: true,
                            style: const TextStyle(
                                height: 2, overflow: TextOverflow.ellipsis),
                          ),
                          deleteIconColor:
                              const Color.fromARGB(255, 222, 158, 112),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.only(
                              left: 20, top: 4, bottom: 4),
                          side: const BorderSide(
                              color: Color(0xffEBE1DA), width: 3),
                          onDeleted: () {
                            controller.listOFexperiences.removeAt(index);
                            controller.update();
                          },
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 90,
                child: TextFiledCustom(
                  controller: controller.experiencesFieldController,
                  onChanged: (exp) {
                    if (exp.length > 5) {
                      controller.isExpwrite = true;
                    } else {
                      controller.isExpwrite = false;
                    }
                    controller.update();
                  },
                  hintText: 'ِExample: Software engineering at SDAIA',
                  title: "Experiences Position",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: TextFiledCustom(
                        controller: controller.experiencesDateFromController,
                        hintText: '2018',
                        title: "From",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextFiledCustom(
                        controller: controller.experiencesDateToController,
                        hintText: '2021',
                        title: "To",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              initState: (_) {},
              builder: (_) {
                return ButtonCustom(
                  height: 30,
                  width: 100,
                  enable: controller.isExpwrite == true ? true : false,
                  color:
                      controller.isExpwrite ? Color(0xffcf8e55) : Colors.white,
                  onPressed: controller.isExpwrite == true
                      ? () {
                          controller.collectionExper();
                          controller.isExpwrite = false;
                        }
                      : () {},
                  title: 'Add',
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 3,
                      child: TextFiledCustom(
                        controller: controller.skillController,
                        hintText: 'ِExample: Agile or Dart Languages',
                        title: "Skills",
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {
                            if (controller.skillController.text.isEmpty ||
                                controller.skillController.text.length < 2) {
                              return;
                            }
                            controller.collectionSkills();
                          },
                          alignment: Alignment.center,
                          iconSize: 40,
                          icon: const Icon(Icons.add)),
                    )
                  ],
                ),
              ),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      spacing: 5,
                      children: List.generate(
                        controller.listOFSkills.length,
                        (index) => InputChip(
                          label: Text(controller.listOFSkills[index]),
                          deleteIconColor: Colors.red,
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                          onDeleted: () {
                            controller.listOFSkills.removeAt(index);
                            controller.update();
                          },
                        ),
                      ))),
            ),
            const SizedBox(
              height: 25,
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (_) => ButtonCustom(
                color: controller.isNamewrite == true
                    ? Color(0xffcf8e55)
                    : Colors.white,
                enable: controller.isNamewrite == true ? true : false,
                onPressed: controller.isNamewrite
                    ? () async {
                        if (controller.nameController.text.isEmpty) {
                          return;
                        }
                        var listUsers = await controller.collectionDataUser();
                        var dataUser = '';

                        for (var element in listUsers) {
                          dataUser = dataUser + " " + element;
                        }

                        Get.toNamed(Routes.DISPLAY_RESUME, arguments: [
                          controller.nameController.text,
                          dataUser
                        ]);
                      }
                    : null,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
