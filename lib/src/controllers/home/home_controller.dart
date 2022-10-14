import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {

  @observable
  int contador = 0;

  @action
  increment(int value){
    contador = contador + value;
  }

}