part of 'widgets.dart';

Flushbar FlushbarWidget(BuildContext context, String text, bool status) {
  return Flushbar(
    duration: Duration(milliseconds: 4000),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: status ? Colors.green : Colors.red,
    message: text,
  )..show(context);
}
