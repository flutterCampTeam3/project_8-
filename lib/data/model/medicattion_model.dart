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