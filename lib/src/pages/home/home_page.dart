import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:var_app/src/controllers/home/home_controller.dart';

import 'components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME PAGE")),
      body: Provider(
        create: (BuildContext context) => HomeController(),
        child: Body(),
      ),
    );
  }
}
