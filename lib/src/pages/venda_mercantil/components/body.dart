import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:var_app/src/controllers/home/home_controller.dart';
import 'package:var_app/src/controllers/venda_mercantil/venda_mercantil_controller.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late VendaMercantilController vendaMercantilController;

  @override
  void initState() {
    super.initState();
    vendaMercantilController = context.read<VendaMercantilController>();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) => Card(
        elevation: 8.0,
        child: Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          height: 200.0,
          width: 350.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(vendaMercantilController.contador.toString(), style: TextStyle(fontSize: 28.0)),

              MaterialButton(
                  color: Colors.green,
                  child: const Text("INCREMENT", style: TextStyle(fontSize: 16.0)),
                  onPressed: () {
                    vendaMercantilController.increment(1);
                  }),

              MaterialButton(
                  color: Colors.red,
                  child: const Text("DECREMENT", style: TextStyle(fontSize: 16.0)),
                  onPressed: () {
                    vendaMercantilController.increment(-1);
                  })
            ],
          ),
        ),

      ),

    );
  }
}
