import 'package:chat_app/domain/models/mock_data.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/chat_lists.dart';
import '../resources/app_routes.dart';
import '../widgets/chat_bubbles.dart';
import '../widgets/custom_screen.dart';
import '../widgets/menu_button.dart';

class ChattingScreen extends StatelessWidget {
  final String title;
  final String imgProfileUrl;
  final String lastMessage;
  const ChattingScreen({super.key, required this.title, required this.imgProfileUrl, required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    messages.add(MessageWrapper(bubble: ChatMessageBubble(message: lastMessage), isMine: false));
    return CustomScreen(
        pageTitle: title, appBarIcon: Icons.arrow_back, directedPage: NamedRoutes.chatsScreen, contentBody: ChatBody(), image: imgProfileUrl);
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
  void dispose() => {_msgController.dispose(), _scrollController.dispose(), super.dispose()};

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
                  Column(
                      spacing: 10,
                      children: List.generate(messages.length, (i) {
                        final msg = messages[i];
                        return Align(alignment: msg.isMine ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart, child: msg.bubble);
                      }))
                ],
              ),
            ),
          ),
        ),
        _buildEmojiPicker(),
        _buildBottomBox(context),
      ],
    );
  }

  Visibility _buildEmojiPicker() {
    return Visibility(
      visible: _showEmojiPicker,
      child: SizedBox(height: Get.height * .32, child: EmojiPicker(onEmojiSelected: (_, emoji) => _msgController.text += emoji.emoji)),
    );
  }

  SizedBox _buildBottomBox(BuildContext context) {
    return SizedBox(
      height: Get.height * .1,
      width: double.maxFinite,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const MenuButton(),
            IconButton(
              icon: const Icon(Icons.tag_faces_rounded, color: Colors.teal),
              onPressed: () => setState(() => _showEmojiPicker = !_showEmojiPicker),
            ),
            _buildMessageBar(context),
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
    );
  }

  SizedBox _buildMessageBar(BuildContext context) {
    return SizedBox(
      width: Get.width * .5,
      child: TextField(
        cursorHeight: 18,
        controller: _msgController,
        cursorColor: Colors.black,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
        decoration: InputDecoration(hintText: "Enter your message", contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
