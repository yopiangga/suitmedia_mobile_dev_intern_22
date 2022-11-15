part of 'widgets.dart';

class CardUserWidget extends StatelessWidget {
  UserModel? user;

  CardUserWidget({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(user!.avatar),
                            fit: BoxFit.cover))),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user!.firstName + " " + user!.lastName,
                        style: darkTextFont.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(user!.email,
                        style: darkTextFont.copyWith(fontSize: 12))
                  ],
                ))
              ],
            ),
          ),
          Container(
            height: 1,
            color: accentColor[2].withOpacity(0.2),
          )
        ],
      ),
    );
  }
}
