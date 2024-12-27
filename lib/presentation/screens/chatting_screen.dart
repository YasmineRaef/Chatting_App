import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/chat_lists.dart';
import '../resources/app_routes.dart';
import '../widgets/chat_bubbles.dart';
import '../widgets/custom_screen.dart';
import '../widgets/menu_button.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScreen(
      pageTitle: "Yasmine Raef",
      appBarIcon: Icons.arrow_back,
      directedPage: NamedRoutes.chatsScreen,
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
  bool _showEmojiPicker = false;
  final _scrollController = ScrollController();
  final _msgController = TextEditingController();

  @override
  void dispose() {
    _msgController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(child: DateChip(date: DateTime.now())),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < msgGot.length - 1; i++) ...[const Gap(10), msgGot[i]]
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for (int i = 0; i < msgSent.length; i++) ...[const Gap(10), msgSent[i]]
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_showEmojiPicker)
          SizedBox(
            height: 250,
            child: EmojiPicker(onEmojiSelected: (category, emoji) => _msgController.text += emoji.emoji),
          ),
        SizedBox(
          height: 75,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const MenuButton(),
              IconButton(
                icon: const Icon(Icons.tag_faces_rounded, color: Colors.teal),
                onPressed: () => setState(() => _showEmojiPicker = !_showEmojiPicker),
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
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
                    focusedBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send, color: Colors.teal),
                onPressed: () {
                  setState(() {
                    addMessage(ChatMessageBubble(message: _msgController.text));
                    _msgController.clear();
                  });
                  _scrollToBottom();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
