import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDivider extends StatelessWidget {
  final double gap;
  const CustomDivider([this.gap = 10, Key? key]) : super(key: key); 

  @override
  Widget build(BuildContext context) => Column(children: [Gap(gap), const Divider(), Gap(gap)]);
}
