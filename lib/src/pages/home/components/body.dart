import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:var_app/src/controllers/home/home_controller.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = context.read<HomeController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Observer(
        builder: (BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("VAR 3.0", style: TextStyle(fontSize: 16.0)),
            const SizedBox(
              height: 16.0,
            ),
            Text(homeController.contador.toString(), style: TextStyle(fontSize: 28.0)),
            const SizedBox(
              height: 16.0,
            ),
            MaterialButton(
              color: Colors.amber[700],
              child: const Text("INCREMENT", style: TextStyle(fontSize: 16.0)),
                onPressed: () {
              homeController.increment(1);
            }),
            const SizedBox(
              height: 16.0,
            ),
            MaterialButton(
                color: Colors.grey[700],
                child: const Text("DECREMENT", style: TextStyle(fontSize: 16.0)),
                onPressed: () {
                  homeController.increment(-1);
                })
          ],
        ),
      ),
    );
  }
}
