part of 'pages.dart';

class ThirdPage extends StatefulWidget {
  Function? callback;

  ThirdPage({this.callback});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Third Screen"),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CardUserWidget(
            callback: (el) => {widget.callback!(el), Navigator.pop(context)},
            user: UserModel(
              firstName: "Alfian Prisma",
              lastName: "Yopiangga 1",
              email: "example@email.com",
              avatar:
                  "https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745",
            ),
          ),
          CardUserWidget(
            callback: (el) => {widget.callback!(el), Navigator.pop(context)},
            user: UserModel(
                firstName: "Alfian Prisma",
                lastName: "Yopiangga 2",
                email: "example@email.com",
                avatar:
                    "https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745"),
          )
        ],
      ),
    );
  }
}
