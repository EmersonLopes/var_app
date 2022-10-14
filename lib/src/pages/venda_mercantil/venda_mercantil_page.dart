import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:var_app/src/controllers/venda_mercantil/venda_mercantil_controller.dart';

import 'components/body.dart';

class VendaMercantilPage extends StatefulWidget {
  const VendaMercantilPage({Key? key}) : super(key: key);

  @override
  State<VendaMercantilPage> createState() => _VendaMercantilPageState();
}

class _VendaMercantilPageState extends State<VendaMercantilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("VENDA MERCANTIL")),
      body: Provider(
        create: (BuildContext context) => VendaMercantilController(),
        child: Body(),
      ),
    );
  }
}
