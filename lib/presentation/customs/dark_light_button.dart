import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app/app_localizations.dart';
import '../../data/get_storage.dart';
import '../resources/theme_manager.dart';

class DarkLightButton extends StatefulWidget {
  const DarkLightButton({super.key});
  @override
  State<DarkLightButton> createState() => _DarkLightButtonState();
}

class _DarkLightButtonState extends State<DarkLightButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(checkCurrentState(myState) == true
            ? "dark".translateS(context)
            : "light".translateS(context)),
        const Gap(10),
        IconButton(
          icon: Icon(myState),
          onPressed: () {
            setState(() {
              myState = (myState == Icons.dark_mode
                  ? Icons.light_mode
                  : Icons.dark_mode);
              box.write('isLight', checkCurrentState(myState));
            });
            AppTheme.changeThemeMode();
          },
        )
      ]),
    );
  }
}

bool checkCurrentState(IconData icon) {
  return icon == Icons.dark_mode;
}
