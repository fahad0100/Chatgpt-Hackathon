import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController dataBrithdayController = TextEditingController();
  final TextEditingController universityController = TextEditingController();
  final TextEditingController universitySpecializationController =
      TextEditingController();
  final TextEditingController dataGraduationController =
      TextEditingController();
  final TextEditingController postionInterstingController =
      TextEditingController();
  List listOFpostionIntersting = [];
  final TextEditingController experiencesFieldController =
      TextEditingController();
  final TextEditingController experiencesDateFromController =
      TextEditingController();
  final TextEditingController experiencesDateToController =
      TextEditingController();
  List listOFexperiences = [];
  final TextEditingController skillController = TextEditingController();
  List listOFSkills = [];
  // final TextEditingController Controller = TextEditingController();
  // final TextEditingController Controller = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //------------Method-----------------
  collectionExper() {
    var experiences =
        '${listOFexperiences.length + 1}: ${experiencesFieldController.text} \nfrom:${experiencesDateFromController.text} to:${experiencesDateToController.text}';
    print(experiences);
    listOFexperiences.add(experiences);
    update();
  }

  collectionDataUser() {
    List<String> dataUsers = [];
    var personInformation =
        'Name: ${nameController.text}, Data Birthday: ${dataBrithdayController.text}. \n';
    dataUsers.add(personInformation);
    var contact =
        'Phone Number: ${phoneController.text}, Email: ${emailController.text}. \n';
    dataUsers.add(contact);
    var address =
        'country: ${countryController.text}, City: ${cityController.text}. \n';
    dataUsers.add(address);
    var education =
        'University Name: ${universityController.text}, University Specialization: ${universitySpecializationController.text}, Date of Graduation: ${dataGraduationController.text}. \n';
    dataUsers.add(education);

    var career = 'Interested in career fields: ${listOFpostionIntersting}. \n';
    dataUsers.add(career);
    // var level = 'Level: beginner level. \n';
    // dataUsers.add(level);
    var experiences = 'experiences: ${listOFexperiences}. \n';
    dataUsers.add(experiences);
    var skills = 'Skills: ${listOFSkills}. \n';
    dataUsers.add(skills);

    print('---------');
    print(dataUsers);
    print('---------');
    return dataUsers;
  }
}
