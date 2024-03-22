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
  Future<String> getCurrentUser() async {
    final currentUser = supabase.auth.currentUser!.id;
    id = currentUser;
    return currentUser;
  }

  // Get User Profile Data
  Future<Map<String, dynamic>> getUserProfilee() async {
    final prifileData =
        await supabase.from('profiles').select().eq('id', id).single();
    return prifileData;
  }

  // ------ medication data Services -----

  // Get User Medications Data
  Future<List<MedicationModel>> getMedications() async {
    final medication =
        await supabase.from('medication').select('*').match({'userId': id});
    final List<MedicationModel> medications = [];
    for (var element in medication) {
      medications.add(MedicationModel.fromJson(element));
    }
    return medications;
  }

  // Add Medications to Data
  Future addMedications({
    required String name,
    required int pills,
    required int days,
    required bool before,
  }) async {
    await supabase.from('medication').insert(
      {
        "medicament_name": name,
        "pills": pills,
        "days": days,
        "user_id": getCurrentUser(),
        "before": before,
        "isCompleted": false
      },
    );
  }

  // Edit User Medications Data
  Future editMedications({
    required String name,
    required int pills,
    required int days,
    required bool before,
    required MedicationModel medication,
  }) async {
    await supabase.from('medication').update(
      {
        "medicament_name": name,
        "pills": pills,
        "days": days,
        "user_id": getCurrentUser(),
        "before": before, // لازم تتعدل
        "isCompleted": medication.isCompleted // هذي كمان
      },
    ).match({'userId': id});
  }

  // Edit User Medications Data
  Future editIsCompleted(
      {required MedicationModel medication, required bool isCompleted}) async {
    await supabase.from('medication').update(
      {
        "medicament_name": medication.medicationName,
        "pills": medication.pills,
        "days": medication.days,
        "user_id": medication.userId,
        "before": medication.before, // لازم تتعدل
        "isCompleted": isCompleted // هذي كمان
      },
    ).match({'userId': id});
  }

  // Delete Medication
  Future deleteMedications({required midId}) async {
    await supabase.from('medication').delete().match({'id': midId});
  }
}
