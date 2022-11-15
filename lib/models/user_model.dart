part of 'models.dart';

class UserModel {
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserModel(
      {this.email = "",
      this.firstName = "",
      this.lastName = "",
      this.avatar = ""});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    UserModel data = UserModel(
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar']);
    return data;
  }
}
