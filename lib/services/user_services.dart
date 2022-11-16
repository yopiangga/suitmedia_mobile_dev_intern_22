part of 'services.dart';

class UserServices {
  UserServices();

  Future<List<UserModel>> getUsers({http.Client? client}) async {
    String url = baseUrl + "/api/users";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url), headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    });

    List<UserModel> temp = [];

    if (response.statusCode != 200) {
      return temp;
    }

    var data = json.decode(response.body);

    for (var item in data["data"]) {
      temp.add(UserModel.fromJson(item));
    }

    return temp;
  }
}
