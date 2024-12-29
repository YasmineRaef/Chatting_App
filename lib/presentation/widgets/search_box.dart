import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorHeight: 18,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: false,
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2))));
  }
}
