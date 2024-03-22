// import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:project_8/data/model/medicattion_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DBService {
  // ------ Data Storage -----

  final box = GetStorage();
  String token = '';
  String id = '';

  DBService() {
    getToken();
    getId();
  }

  addToken() async {
    if (token.isNotEmpty) {
      await box.write("token", token);
    }
    box.save();
  }

  addId() async {
    if (id.isNotEmpty) {
      await box.write("Id", id);
    }
    box.save();
  }

  getToken() {
    if (box.hasData("token")) {
      if (token.isEmpty) {
        token = box.read("token");
      }
    }
  }

  getId() {
    if (box.hasData("Id")) {
      if (token.isEmpty) {
        id = box.read("Id");
      }
    }
  }

  final supabase = Supabase.instance.client;

//--- SignUp func
  Future SignUp(
      {required String email,
      required String password,
      required String userName}) async {
    await supabase.auth.signUp(
      data: {'Name': userName},
      email: email,
      password: password,
    );
    // Send email verification
    await supabase.auth.resetPasswordForEmail(email);
  }

  Future SignIn({required String email, required String password}) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
    token = supabase.auth.currentSession!.accessToken;
    addToken();
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

  // Get Current session info
  Future getCurrentSession() async {
    final session = supabase.auth.currentSession;
    return session;
  }

  // Get Current User Id
  Future getCurrentUser() async {
    final currentUser = supabase.auth.currentUser!.id;
    id = currentUser;
    return currentUser;
  }

  // Get User Profile Data
  Future getUserProfilee() async {
    final prifileData =
        await supabase.from('profiles').select().eq('id', id).single();
    return prifileData;
  }

  // ------ medication data Services -----

  // Get User Medications Data
  Future getMedications() async {
    final cvData =
        await supabase.from('medication').select('*').match({'userId': id});
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
    ).match({'userId': id});
  }

  // Delete Medication
  Future deleteMedications({required midId}) async {
    await supabase.from('medication').delete().match({'id': midId});
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


