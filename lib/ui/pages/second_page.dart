part of 'pages.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                  "Alfian Prisma Yopiangga",
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
                  "Selected User Name",
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
          callback: () {},
        ),
      ),
    );
  }
}
