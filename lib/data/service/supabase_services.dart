// import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:project_8/data/data_layer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;
  final locator = GetIt.I.get<AllData>();

  // ------ Auth Services -----
  // 1- Sign In
  Future signIn({
    required String email,
    required String password,
  }) async {
    await supabase.auth.signInWithPassword(
      password: password,
      email: email,
    );
  }

  // 2- Sign Up
  Future signUp({
    required String email,
    required String password,
    required String userName,
  }) async {
    await supabase.auth.signUp(
      data: {'Name': userName},
      password: password,
      email: email,
    );
  }

  // 3- Sign Out
  Future signOut() async {
    supabase.auth.signOut();
  }

  // ------ Data Services -----

  
  // ------ User data Services -----

  // Get Current User Id
  Future getCurrentUser() async {
    final currentUser = supabase.auth.currentUser!.id;
    return currentUser;
  }

  // Get User Profile Data
  Future getUserProfilee({required String id}) async {
    final prifileData =
        await supabase.from('profiles').select().eq('id', id).single();
    return prifileData;
  }


}
