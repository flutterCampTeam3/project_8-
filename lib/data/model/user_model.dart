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
//-----------
/*

class UserModel {
  late final String id;
  late final DateTime createdAt;
  late final String name;

  UserModel({
    required this.id,
    required this.createdAt,
    required this.name,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
      name: map['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'name': name,
    };
  }
}
*/



