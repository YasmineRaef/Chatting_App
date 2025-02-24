import 'package:chat_app/presentation/resources/app_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  await Supabase.initialize(url: AppDataBase.supabaseUrl, anonKey: AppDataBase.supabaseKey);
  await GetStorage.init();

  runApp(const ChatApp());
}
