import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suitmedia_mobile_dev_intern_22/providers/providers.dart';
import 'package:suitmedia_mobile_dev_intern_22/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Suitmedia Mobile Dev Intern 22',
          theme: ThemeData(
            splashColor: Colors.white,
          ),
          home: const ThirdPage()),
    );
  }
}
