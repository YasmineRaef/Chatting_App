import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/chat_list.dart';
import '../widgets/chat_bubbles.dart';
import '../widgets/custom_screen.dart';
import '../resources/app_routes.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScreen(
      pageTitle: "Yasmine Raef",
      appBarIcon: Icons.arrow_back,
      directedPage: NamedRoutes.chatsScreen,
      //
      contentBody: ChatBody(),
    );
  }
}

class ChatBody extends StatefulWidget {
  const ChatBody({super.key});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  static final _msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 620,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(child: DateChip(date: DateTime.now())),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < msgGot.length; i++) ...[const Gap(10), msgGot[i]]
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            for (int i = 0; i < msgSent.length; i++) ...[const Gap(10), msgSent[i]]
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, highlightColor: Colors.transparent, icon: const Icon(Icons.add, color: Colors.teal)),
                IconButton(
                  onPressed: () async {
                    final XFile? imagePicked = await ImagePicker().pickImage(source: ImageSource.camera);
                    if (imagePicked != null) {
                      addMessage(ChatImageBubble(imagePath: imagePicked.path));
                    }
                  },
                  icon: const Icon(Icons.camera_alt_outlined, color: Colors.teal),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextField(
                    controller: _msgController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      filled: false,
                      hintText: "Enter your message",
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.teal),
                  onPressed: () => setState(() => {addMessage(ChatMessageBubble(message: _msgController.text)), _msgController.clear()}),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
