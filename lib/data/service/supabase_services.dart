// import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:project_8/data/data_layer.dart';
import 'package:project_8/data/model/medicattion_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DBService {
  final supabase = Supabase.instance.client;
  final locator = GetIt.I.get<AllData>();

//--- SignUp func
  Future SignUp({required String email, required String password}) async {
    await supabase.auth.signUp(email: email, password: password);
    // Send email verification
    await supabase.auth.resetPasswordForEmail(email);
  }

  Future SignIn({required String email, required String password}) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
    locator.token = supabase.auth.currentSession!.accessToken;
    locator.addToken();
  }

  //Future SignOut
  Future SignOut() async {
    await supabase.auth.signOut();
  }

  Future<void> resetPassword({
    required String email,
  }) async {
    final response = await supabase.auth.resetPasswordForEmail(email);
    return response;
  }

  // ------ Data Services -----

  // ------ User data Services -----

  // Get Current User Id
  Future getCurrentUser() async {
    final currentUser = supabase.auth.currentUser!.id;
    locator.id = currentUser;
    return currentUser;
  }

  // Get User Profile Data
  Future getUserProfilee({required String id}) async {
    final prifileData =
        await supabase.from('profiles').select().eq('id', id).single();
    return prifileData;
  }

  // ------ medication data Services -----

  // Get User Medications Data
  Future getMedications() async {
    final cvData = await supabase
        .from('medication')
        .select('*')
        .match({'userId': locator.id});
    final List<MedicationModel> medication = [];
    medication.add(MedicationModel.fromJson(cvData[0]));
    return medication;
  }

  // Add Medications to Data
  Future addMedications({
    required String name,
    required int pills,
    required int days,
  }) async {
    await supabase.from('medication').insert(
      {
        "medicament_name": name,
        "pills": pills,
        "days": days,
        "user_id": getCurrentUser(),
      },
    );
  }

  // Edit User Medications Data
  Future editMedications({
    required String name,
    required int pills,
    required int days,
  }) async {
    await supabase.from('medication').update(
      {
        "medicament_name": name,
        "pills": pills,
        "days": days,
        "user_id": getCurrentUser(),
      },
    ).match({'userId': locator.id});
  }

  // Delete Medication
  Future deleteMedications({required id}) async {
    await supabase.from('medication').delete().match({'id': id});
  }
}

//------------------- if you need to use it
/*
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
*/


