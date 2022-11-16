part of 'pages.dart';

class ThirdPage extends StatefulWidget {
  Function? callback;

  ThirdPage({this.callback});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool load = true;
  UserServices userServices = UserServices();
  List<UserModel> users = [];
  GetUserModel? getUserModel = GetUserModel();

  void initState() {
    super.initState();
    fetchData(1);
  }

  void fetchData(page) async {
    getUserModel = await userServices.getUsers(page: page);
    users = [...users, ...getUserModel!.data];

    if (this.mounted) {
      setState(() {
        load = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Third Screen"),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        child: ButtonWidget(
          title: "Load More Data",
          active: getUserModel!.page < getUserModel!.totalPages,
          callback: () {
            if (getUserModel != null) {
              if (getUserModel!.page < getUserModel!.totalPages) {
                fetchData(getUserModel!.page + 1);
              }
            }
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          load == true
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Shimmer.fromColors(
                    baseColor: accentColor[3],
                    highlightColor: Colors.white,
                    period: Duration(milliseconds: 700),
                    child: Container(
                      height: 80,
                      color: Colors.grey,
                    ),
                  ),
                )
              : Column(
                  children: users
                      .map((e) => CardUserWidget(
                            callback: (el) =>
                                {widget.callback!(el), Navigator.pop(context)},
                            user: e,
                          ))
                      .toList(),
                ),
        ],
      ),
    );
  }
}
