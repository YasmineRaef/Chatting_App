import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await Supabase.initialize(
      url: 'https://gsqqawpixeiifstipofl.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdzcXFhd3BpeGVpaWZzdGlwb2ZsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDA0MzM4OTMsImV4cCI6MjA1NjAwOTg5M30.I-zcCHjHMbDnzW9RVe0v0nXv3CsnyV7_fovgngGHjZ0');
  await GetStorage.init();

  runApp(const ChatApp());
}
