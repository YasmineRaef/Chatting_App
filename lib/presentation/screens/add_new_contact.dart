import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stroke_text/stroke_text.dart';

import '../widgets/chatter.dart';
import '../widgets/custom_text_field.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({super.key});
  static final addcontactformKey = GlobalKey<FormState>();

  @override
  State<AddNewContact> createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {
  void addNewChat(String name) {
    setState(() {
      names.add(Chatter(contactName: name, lastMsg: "New Contact Added"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 350,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(15),
            StrokeText(
              text: "New Contact",
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 20),
              strokeWidth: 1,
              strokeColor: Colors.teal,
              textAlign: TextAlign.center,
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
                    ElevatedButton(
                        onPressed: () => AddNewContact.addcontactformKey.currentState?.validate() == true ? addNewChat("New Contact") : null,
                        child: Text("Add Contact"))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

List<Chatter> names = [];
