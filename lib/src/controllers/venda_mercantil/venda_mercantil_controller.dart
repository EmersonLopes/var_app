import 'package:mobx/mobx.dart';

part 'venda_mercantil_controller.g.dart';

class VendaMercantilController = VendaMercantilControllerBase with _$VendaMercantilController;

abstract class VendaMercantilControllerBase with Store {

  @observable
  int contador = 0;

  @action
  increment(int value){
    contador = contador + value;
  }

}