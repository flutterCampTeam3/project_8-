//------------------------- User Model
class UserModel {
  late final String id;
  late final String createdAt;
  late final String name;

  UserModel({
    required this.id,
    required this.createdAt,
    required this.name,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['created_at'] = createdAt;
    _data['name'] = name;

    return _data;
  }
}
//////////---------------  MedicationModel  ----------

class MedicationModel {
  late final String medicationId;
  late final String createdAt;
  late final String medicationName;
  late final String pills;
  late final String days;
  late final String userId;

  MedicationModel({
    required this.medicationId,
    required this.createdAt,
    required this.medicationName,
    required this.pills,
    required this.days,
    required this.userId,
  });

  factory MedicationModel.fromJson(Map<String, dynamic> json) {
    return MedicationModel(
      medicationId: json['medication_id'],
      createdAt: json['createdAt'],
      medicationName: json['medication_name'],
      pills: json['pills'],
      days: json['days'],
      userId: json['User_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'medication_id': medicationId,
      'createdAt': createdAt,
      'medication_name': medicationName,
      'pills': pills,
      'days': days,
      'User_id': userId,
    };
  }
}

//-------------------  if you want to try the days table alone this is the model for it  -------------------

class DaysModel {
  late final String medId;
  late final String createdAt;
  late final String days;

  DaysModel({
    required this.medId,
    required this.createdAt,
    required this.days,
  });

  factory DaysModel.fromJson(Map<String, dynamic> json) {
    return DaysModel(
      medId: json['medId'],
      createdAt: json['createdAt'],
      days: json['days'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'medId': medId,
      'createdAt': createdAt,
      'days': days,
    };
  }
}
