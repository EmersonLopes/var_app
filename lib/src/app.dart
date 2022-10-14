import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';
import 'utils/routes.dart';

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "VAR 3.0",
      initialRoute: Routes.HOME,
      routes: {
        Routes.HOME: (ctx) => HomePage(),
      },
    );
  }
}
