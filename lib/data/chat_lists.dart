import 'package:chat_app/domain/models/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../presentation/widgets/chat_bubbles.dart';

final List messages = [
  MessageWrapper(bubble: ChatMessageBubble(message: "Hey! How are you?"), isMine: false),
  MessageWrapper(bubble: ChatMessageBubble(message: "I'm good, just working on Lettuce Chat ✌️"), isMine: true),
  MessageWrapper(bubble: ChatMessageBubble(message: "Nice! Can’t wait to see it."), isMine: false)
];

void addMessage(Widget value) => messages.add(MessageWrapper(bubble: value, isMine: true));

List<IconData> menuIcons = [Icons.camera_alt_outlined, Icons.photo, Icons.contacts];
List<String> menuTitles = ["Camera", "Gallery", "Add Contact"];
List<Function> menuFunctions = [
  () async {
    final XFile? imagePicked = await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagePicked != null) {
      addMessage(ChatImageBubble(imagePath: imagePicked.path));
    }
  },
  () async {
    final XFile? imagePicked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imagePicked != null) {
      addMessage(ChatImageBubble(imagePath: imagePicked.path));
    }
  },
  () async {
    var status = await Permission.contacts.request();
    if (status.isGranted) {
      final Contact? contact = await FlutterContacts.openExternalPick();
      if (contact != null) {
        final String name = contact.displayName;
        final String number = contact.phones.isNotEmpty ? contact.phones.first.number : 'No number';
        addMessage(
          ChatContactBubble(
            imagePath: 'assets/images/profile_lettuce.jpg',
            contactName: name,
            contactNumber: number,
          ),
        );
      }
    } else {
      Get.snackbar("Error", "Contacts permission denied.",
          snackPosition: SnackPosition.BOTTOM, duration: const Duration(seconds: 2), backgroundColor: Colors.red);
    }
  },
];
