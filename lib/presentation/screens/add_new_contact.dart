import 'package:chat_app/presentation/resources/app_routes.dart';
import 'package:chat_app/presentation/widgets/custom_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../auth/base/field_type.dart';
import '../auth/sign_in/sign_in_controller.dart';

class AddNewContact extends StatelessWidget {
  static final _controller = SignInController();

  const AddNewContact({super.key});

  static final _addContactFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          image: '',
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
                    key: _addContactFormKey,
                    child: Column(
                      children: [
                        Gap(20),
                        CustomTextField(label: "name", icon: Icons.abc, controller: _controller),
                        Gap(20),
                        CustomTextField(label: "phone", icon: Icons.numbers, controller: _controller),
                        Gap(25),
                        ElevatedButton(onPressed: () => _addContactFormKey.currentState?.validate(), child: Text("Add Contact"))
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
