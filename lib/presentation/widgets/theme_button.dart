import 'package:flutter/material.dart';

import '../../app/app_localizations.dart';
import '../../data/get_storage.dart';
import '../resources/theme_manager.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(myState, color: Colors.black),
      onTap: () => setState(() {
        myState = (myState == Icons.dark_mode ? Icons.light_mode : Icons.dark_mode);
        box.write('isLight', checkCurrentState(myState));
        AppTheme.changeThemeMode();
      }),
      title: Text((checkCurrentState(myState) == true ? "dark" : "light").translateS(context)),
    );
  }
}

bool checkCurrentState(IconData icon) => icon == Icons.dark_mode;

/*
  Container(
      width: 370,
      height: 60,
      decoration: BoxDecoration(border: Border.all(color: Colors.teal, width: 2), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(checkCurrentState(myState) == true ? "dark".translateS(context) : "light".translateS(context)),
          const Gap(10),
          IconButton(
            icon: Icon(myState, color: Colors.black),
            onPressed: () {
              setState(() {
                myState = (myState == Icons.dark_mode ? Icons.light_mode : Icons.dark_mode);
                box.write('isLight', checkCurrentState(myState));
                AppTheme.changeThemeMode();
              });
            },
          )
        ],
      ),
    )
*/