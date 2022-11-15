part of 'services.dart';

class UserServices {
  String? token;

  UserServices({required this.token});

  Future<UserModel?> getUser({http.Client? client}) async {
    String url = baseUrl + "/api/user";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url), headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    });

    UserModel? temp;

    if (response.statusCode != 200) {
      return temp;
    }

    var data = json.decode(response.body);

    temp = UserModel.fromJson(data);
    return temp;
  }
}
