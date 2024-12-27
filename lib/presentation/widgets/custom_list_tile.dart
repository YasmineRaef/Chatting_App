import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Function fun;
  final String titleTile;
  final IconData iconData;
  const CustomListTile({super.key, required this.iconData, required this.titleTile, required this.fun});

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(iconData), title: Text(titleTile), onTap: () => fun());
  }
}
