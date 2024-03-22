class MedicationModel {
  final String medicationId;
  final DateTime createdAt;
  final String medicationName;
  final int pills;
  final int days;
  final String userId;
  final bool before;
  final bool isCompleted;

  MedicationModel({
    required this.medicationId,
    required this.createdAt,
    required this.medicationName,
    required this.pills,
    required this.days,
    required this.userId,
    required this.before,
    required this.isCompleted, 
  });

  factory MedicationModel.fromJson(Map<String, dynamic> json) {
    return MedicationModel(
      medicationId: json['medication_id'],
      createdAt: DateTime.parse(json['created_at']),
      medicationName: json['medicament_name'] ?? "",
      pills: json['pills'] ?? 0,
      days: json['days'] ?? 0,
      userId: json['user_id'],
      before: json['before'] ?? false,
      isCompleted: json['is_completed'] ?? false, 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'medication_id': medicationId,
      'created_at': createdAt.toIso8601String(),
      'medicament_name': medicationName,
      'pills': pills,
      'days': days,
      'user_id': userId,
      'before': before,
      'is_completed': isCompleted, 
    };
  }
}



/////-----------------
/*

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
*/
