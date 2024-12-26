import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';

import '../presentation/resources/app_assets.dart';
import '../presentation/widgets/chat_bubbles.dart';

List msgSent = [
  const ChatMessageBubble(message: "Hi"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you too!!"),
];

List msgGot = [
  const ChatMessageBubble(message: "Hello!!"),
  const ChatImageBubble(imagePath: AppAssets.lettuceProfile),
  const ChatMessageBubble(message: "Nice to meet you!!"),
  const ChatMessageBubble(message: "Hello i am happy that it did work but with the row nested in another row not as we wanted using a wrap widget")
];

void addMessage(Widget value) => msgSent.add(value);

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
  //This function for picking contacts from device
  () async {
    if (await FlutterContacts.requestPermission()) {
      final Contact? contact = await FlutterContacts.openExternalPick();
      if (contact != null) {
        addMessage(Text("Contact: ${contact.displayName}"));
      }
    }
  },
];
