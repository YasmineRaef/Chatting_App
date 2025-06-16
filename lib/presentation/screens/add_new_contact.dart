import 'package:chat_app/presentation/resources/app_routes.dart';
import 'package:chat_app/presentation/widgets/custom_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_text_field.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({super.key});
  static final addcontactformKey = GlobalKey<FormState>();

  @override
  State<AddNewContact> createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          pageTitle: "New Contact",
          appBarIcon: Icons.arrow_back,
          directedPage: NamedRoutes.chatsScreen,
          contentBody: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gap(75),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.teal,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.person_add, size: 70, color: Colors.white)),
                ),
                Form(
                    key: AddNewContact.addcontactformKey,
                    child: Column(
                      children: [
                        Gap(20),
                        CustomTextField(hintText: "name", icon: Icons.abc, passwordVisible: false),
                        Gap(20),
                        CustomTextField(hintText: "phone", icon: Icons.numbers, passwordVisible: false),
                        Gap(25),
                        ElevatedButton(onPressed: () => AddNewContact.addcontactformKey.currentState?.validate(), child: Text("Add Contact"))
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
