part of 'shared.dart';

const double defaultMargin = 20;

Color mainColor = const Color(0xFF2B637B);
List<Color> accentColor = [
  Color(0xFF554AF0),
  Color(0xFF04021D),
  Color(0xFF686777),
  Color(0xFFF5F8FA)
];

TextStyle mainTextFont = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontWeight: FontWeight.w400);
TextStyle darkTextFont = GoogleFonts.poppins()
    .copyWith(color: accentColor[1], fontWeight: FontWeight.w400);
TextStyle grayTextFont = GoogleFonts.poppins()
    .copyWith(color: accentColor[2], fontWeight: FontWeight.w400);
TextStyle whiteTextFont = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w400);
