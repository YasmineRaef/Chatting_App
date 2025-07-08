import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class AppDataBase {
  static const supabaseUrl = 'https://gsqqawpixeiifstipofl.supabase.co';
  static const supabaseKey = String.fromEnvironment(
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdzcXFhd3BpeGVpaWZzdGlwb2ZsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDA0MzM4OTMsImV4cCI6MjA1NjAwOTg5M30.I-zcCHjHMbDnzW9RVe0v0nXv3CsnyV7_fovgngGHjZ0');
}
