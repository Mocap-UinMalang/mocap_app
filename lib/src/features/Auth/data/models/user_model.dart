import 'package:mocap_app/src/features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({required super.id, required super.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(email: json['email'], id: json['id']);
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'id': id};
  }
}
