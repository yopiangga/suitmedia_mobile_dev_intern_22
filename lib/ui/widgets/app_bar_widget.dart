part of 'widgets.dart';

AppBar appBarWidget(BuildContext context, String title) {
  return AppBar(
    title: Text(
      title,
      style: darkTextFont.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: accentColor[0],
    shadowColor: accentColor[3].withOpacity(0.1),
  );
}
