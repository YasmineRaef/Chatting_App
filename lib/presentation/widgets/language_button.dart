import 'package:flutter/material.dart';

import '../../app/app_localizations.dart';
import '../../data/get_storage.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("language".translateS(context)),
      onTap: () => setState(() {
        if (checkCurrentLocale() == true) {
          myLocale = const Locale('ar');
          isEnglish = false;
        } else {
          myLocale = const Locale('en');
          isEnglish = true;
        }
        changeLocal(myLocale);
        box.write('isEnglish', isEnglish);
      }),
      trailing: const Icon(Icons.language, color: Colors.black),
    );
  }
}
