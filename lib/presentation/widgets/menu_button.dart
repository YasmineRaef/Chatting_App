import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

import '../../data/chat_lists.dart';
import 'custom_list_tile.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showPopover(
            backgroundColor: Colors.teal,
            shadow: List.empty(),
            context: context,
            bodyBuilder: (context) => const MenuItems(),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 200,
            arrowHeight: 0,
            transitionDuration: const Duration(milliseconds: 300),
          );
        },
        highlightColor: Colors.transparent,
        icon: const Icon(Icons.add, color: Colors.teal));
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < 3; i++) ...[
            CustomListTile(iconData: menuIcons[i], titleTile: menuTitles[i], fun: menuFunctions[i]),
          ]
        ],
      ),
    );
  }
}
