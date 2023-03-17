import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createCV.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';
import 'package:hackathon_chatgpt/app/widgets/Buttons/ButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/TextField/TextFiledCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/TextField/TextFiledPhoneCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/TextField/TextFiledWithButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';
import 'package:simple_chips_input/select_chips_input.dart';
import 'package:simple_chips_input/simple_chips_input.dart';
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
              padding: EdgeInsets.all(8.0),
              child: TextUtils(
                  text: "Create your CV",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextUtils(
                  text: "Person Information",
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFiledCustom(
                controller: controller.nameController,
                hintText: 'Full Name',
                title: "NAME",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFiledCustom(
                controller: controller.dataBrithdayController,
                hintText: '10/10/1994',
                title: "DATE OF BIRTHDAY",
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 26, bottom: 10),
              child: TextUtils(
                  text: "Contact", fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFiledCustom(
                controller: controller.emailController,
                hintText: 'Urcv@gmail.com',
                title: "EMAIL",
              ),
            ),
            SizedBox(
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
                  text: "Address", fontSize: 20, fontWeight: FontWeight.w800),
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
                  text: "Education", fontSize: 20, fontWeight: FontWeight.w800),
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
                          icon: Icon(Icons.add)),
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
                          deleteIconColor: Colors.red,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black),
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
                            style: TextStyle(),
                          ),
                          deleteIconColor: Colors.red,
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black),
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
                    SizedBox(
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
            Center(
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xff383230),
                    width: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff383230),
                      blurRadius: 0,
                      offset: Offset(4, 4),
                    ),
                  ],
                  color: Color(0xffcf8e55),
                ),
                child: TextButton(
                  onPressed: () {
                    print(controller.collectionExper());
                  },
                  child: Text(
                    "Add",
                    style: GoogleFonts.aboreto(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
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
                            controller.listOFSkills
                                .add(controller.skillController.text);
                            controller.skillController.text = '';
                            controller.update();
                          },
                          alignment: Alignment.center,
                          iconSize: 40,
                          icon: Icon(Icons.add)),
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
                          side: BorderSide(color: Colors.black),
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
            ButtonCustom(
              onPressed: () async {
                var listUsers = await controller.collectionDataUser();
                var dataUser = '';

                for (var element in listUsers) {
                  print(element);
                  dataUser = dataUser + " " + element;
                }
                print('wite....');
                var resume = await methodCreateResume(data: dataUser);
                Get.toNamed(Routes.DISPLAY_RESUME, arguments: resume);
              },
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
