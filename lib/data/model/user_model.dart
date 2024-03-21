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




