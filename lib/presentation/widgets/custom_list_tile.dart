import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.iconData, required this.titleTile, required this.fun});
  final IconData iconData;
  final String titleTile;
  final Function fun;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(titleTile),
      onTap: () => fun(),
    );
  }
}
