part of 'pages.dart';

class SecondPage extends StatefulWidget {
  UserModel? user;
  SecondPage({this.user});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  UserModel selectedUser = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Second Screen"),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome", style: darkTextFont.copyWith(fontSize: 12)),
                Text(
                  widget.user == null
                      ? "User"
                      : widget.user!.firstName + " " + widget.user!.lastName,
                  style: darkTextFont.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: defaultMargin),
              child: Center(
                child: Text(
                  selectedUser == null
                      ? "No User Selected"
                      : selectedUser.firstName + " " + selectedUser.lastName,
                  textAlign: TextAlign.center,
                  style: darkTextFont.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        child: ButtonWidget(
          title: "Choose a User",
          active: true,
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ThirdPage(
                          callback: (user) {
                            setState(() {
                              selectedUser = user;
                            });
                          },
                        )));
          },
        ),
      ),
    );
  }
}
