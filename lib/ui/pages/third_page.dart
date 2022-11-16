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

  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    users = await userServices.getUsers();

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
