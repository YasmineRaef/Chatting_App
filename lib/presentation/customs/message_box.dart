import 'package:chatting_app/data/chat_list.dart';
import 'package:chatting_app/presentation/customs/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({super.key});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  final _msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(230, 225, 210, 1),
      elevation: 0,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.teal,
                  )),
              IconButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      addMessage(ChatImageBubble(imagePath: image.toString()));
                      print(image.toString());
                    }
                  },
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.teal,
                  )),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: TextField(
                    // onChanged: (text) {
                    //   print(text);
                    // },
                    controller: _msgController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      fillColor: Colors.grey.shade200,
                      hintText: "Enter your message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    print(_msgController.text);
                    addMessage(ChatMessageBubble(msg: _msgController.text));
                    setState(() {});
                    _msgController.clear();
                  },
                  highlightColor: Colors.transparent,
                  icon: const Icon(
                    Icons.send,
                    color: Colors.teal,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
