part of 'models.dart';

class GetUserModel {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<UserModel> data;

  GetUserModel(
      {this.page = 0,
      this.perPage = 0,
      this.total = 0,
      this.totalPages = 0,
      this.data = const []});

  factory GetUserModel.fromJson(Map<dynamic, dynamic> json) {
    List<UserModel> temp = [];
    for (var item in json['data']) {
      temp.add(UserModel.fromJson(item));
    }

    GetUserModel data = GetUserModel(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: temp);
    return data;
  }
}
