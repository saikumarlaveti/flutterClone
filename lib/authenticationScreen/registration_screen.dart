import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_application/Controller/authentication_controller.dart';
import 'package:tinder_application/widgets/custom_text_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //personal info
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController looking = TextEditingController();
  @override

  //Appearance
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController bodyType = TextEditingController();

  //Life style
  TextEditingController drink = TextEditingController();
  TextEditingController smoke = TextEditingController();
  TextEditingController martialStatus = TextEditingController();
  TextEditingController haveChildren = TextEditingController();
  TextEditingController noOfchildren = TextEditingController();
  TextEditingController profession = TextEditingController();
  TextEditingController employment = TextEditingController();
  TextEditingController income = TextEditingController();
  TextEditingController livingSituation = TextEditingController();
  TextEditingController willing = TextEditingController();
  TextEditingController relationship = TextEditingController();
  @override
//Background - cultural values
  TextEditingController nationality = TextEditingController();
  TextEditingController education = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController regilion = TextEditingController();
  TextEditingController ethnicity = TextEditingController();

  bool showProgressBar = false;

  var authenticationController = AuthenticationController.outhController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "to get Started Now",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //choose image
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/profile_avatar.jpg"),
                backgroundColor: Colors.black,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {
                    authenticationController.pickImageFileFromGallery();
                  },
                  icon: const Icon(
                    Icons.image_outlined,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        authenticationController.captureImageFromPhoneCamera();
                      },
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                width: 10,
              ),

              const SizedBox(
                height: 30,
              ),
              //personal info
              Text(
                "Personal Info:",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
//name
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: name,
                  labelText: "name",
                  iconData: Icons.person_outline,
                  isObscure: false, // Corrected property name
                ),
              ),

//password
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: password,
                  labelText: "Password",
                  iconData: Icons.lock_open_outlined,
                  isObscure: true, // Corrected property name
                ),
              ),

//age
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: age,
                  labelText: "Age",
                  iconData: Icons.numbers,
                  isObscure: false, // Corrected property name
                ),
              ),
//phoneNo
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: phoneNo,
                  labelText: "PhoneNo",
                  iconData: Icons.phone,
                  isObscure: false, // Corrected property name
                ),
              ),
//city
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: city,
                  labelText: "City",
                  iconData: Icons.location_city,
                  isObscure: false, // Corrected property name
                ),
              ),
//country
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: country,
                  labelText: "Country",
                  iconData: Icons.location_city,
                  isObscure: false, // Corrected property name
                ),
              ),
//profieHeading

              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: looking,
                  labelText: "profileHeading",
                  iconData: Icons.text_fields,
                  isObscure: false, // Corrected property name
                ),
              ),

//lookingforinapartner
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: name,
                  labelText: "what your are looking for in a partner",
                  iconData: Icons.face,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 24,
              ),
//appeerance
              const Text(
                "Appearance:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//heighr
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: height,
                  labelText: "Height",
                  iconData: Icons.insert_chart,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),

//weight
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: weight,
                  labelText: "Weight",
                  iconData: Icons.table_chart,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//bodytype
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: bodyType,
                  labelText: "BodyType",
                  iconData: Icons.type_specimen,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//Life style
              const Text(
                "Life Style:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//drink
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: drink,
                  labelText: "Drink",
                  iconData: Icons.local_drink_outlined,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),

//smoke
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: smoke,
                  labelText: "Smoke",
                  iconData: Icons.smoking_rooms,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//matrialStatus
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: martialStatus,
                  labelText: "Martial Status",
                  iconData: CupertinoIcons.person_2,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//have children
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: haveChildren,
                  labelText: "Have children",
                  iconData: CupertinoIcons.person_3_fill,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //no of children
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: noOfchildren,
                  labelText: "NO of children",
                  iconData: CupertinoIcons.person_2_fill,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              //profession
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: profession,
                  labelText: "Profession",
                  iconData: Icons.business_center,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //employment
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: employment,
                  labelText: "Employment status",
                  iconData: CupertinoIcons.rectangle_stack_person_crop_fill,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //income
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: income,
                  labelText: "Income",
                  iconData: CupertinoIcons.money_dollar,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
//living situation
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: livingSituation,
                  labelText: "Living situation",
                  iconData: CupertinoIcons.person_2_square_stack,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //willing re
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: willing,
                  labelText: "Willing",
                  iconData: CupertinoIcons.person_2,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //relationship
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: relationship,
                  labelText: "RelationShip",
                  iconData: CupertinoIcons.person_2,
                  isObscure: false, // Corrected property name
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
