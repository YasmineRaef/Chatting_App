import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const ChatApp());
}
