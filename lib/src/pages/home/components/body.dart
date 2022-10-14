import 'package:flutter/material.dart';
import 'package:var_app/src/utils/routes.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.VENDA_MERCANTIL);
      },
      child: Card(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          height: 250.0,
          width: 450.0,
          child: Text("VENDA MERCANTIL"),
        ),
      ),
    );
  }
}
