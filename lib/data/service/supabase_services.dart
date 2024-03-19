// import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:project_8/data/data_layer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;
  final locator = GetIt.I.get<AllData>();
}
