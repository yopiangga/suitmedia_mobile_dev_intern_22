part of 'models.dart';

class UserModel {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserModel(
      {this.id = 0,
      this.email = "",
      this.firstName = "",
      this.lastName = "",
      this.avatar = ""});

  factory UserModel.fromJson(Map<dynamic, dynamic> json) {
    UserModel data = UserModel(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar']);
    return data;
  }
}
