import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../presentation/widgets/chat_bubbles.dart';

List msgSent = [
  const ChatMessageBubble(message: "Hi"),
  const ChatMessageBubble(message: "Nice to meet you too!!"),
  ChatContactBubble(
    imagePath: 'assets/images/profile_lettuce.jpg',
    contactName: 'Yasmine Raef',
    contactNumber: '(929) 739-8937',
  )
];

List msgGot = [const ChatMessageBubble(message: "Hello!!"), const ChatMessageBubble(message: "Nice to meet you!!")];

void addMessage(Widget value) => msgSent.add(value);

List<IconData> menuIcons = [Icons.camera_alt_outlined, Icons.photo, Icons.contacts];
List<String> menuTitles = ["Camera", "Gallery", "Add Contact"];
List<Function> menuFunctions = [
  () async {
    final XFile? imagePicked = await ImagePicker().pickImage(source: ImageSource.camera);
    //Should add ChatImageBubble here with image Path from camera pic
    if (imagePicked != null) {
      addMessage(ChatImageBubble(imagePath: imagePicked.path));
    }
  },
  () async {
    final XFile? imagePicked = await ImagePicker().pickImage(source: ImageSource.gallery);
    //Should add ChatImageBubble here with image Path
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
      print("Contacts permission denied.");
    }
  },
];
