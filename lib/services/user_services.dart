part of 'services.dart';

class UserServices {
  UserServices();

  Future<GetUserModel?> getUsers({http.Client? client, page = 1}) async {
    String url = baseUrl + "/api/users?page=" + page.toString();

    client ??= http.Client();

    var response = await client.get(Uri.parse(url), headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    });

    GetUserModel? temp;

    if (response.statusCode != 200) {
      return temp;
    }

    var data = json.decode(response.body);

    temp = GetUserModel.fromJson(data);

    return temp;
  }
}
