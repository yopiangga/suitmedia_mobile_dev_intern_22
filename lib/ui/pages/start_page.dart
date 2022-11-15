part of 'pages.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController polindromeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Icon(
                        Icons.person_add,
                        size: 32,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFieldWidget(
                    controller: nameController,
                    title: "Name",
                    callback: (text) {},
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    controller: polindromeController,
                    title: "Polindrome",
                    callback: (text) {},
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonWidget(
                    title: "CHECK",
                    callback: () {},
                    active: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ButtonWidget(
                    title: "NEXT",
                    callback: () {},
                    active: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
