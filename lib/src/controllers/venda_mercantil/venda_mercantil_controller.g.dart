// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venda_mercantil_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VendaMercantilController on VendaMercantilControllerBase, Store {
  late final _$contadorAtom =
      Atom(name: 'VendaMercantilControllerBase.contador', context: context);

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  late final _$VendaMercantilControllerBaseActionController =
      ActionController(name: 'VendaMercantilControllerBase', context: context);

  @override
  dynamic increment(int value) {
    final _$actionInfo = _$VendaMercantilControllerBaseActionController
        .startAction(name: 'VendaMercantilControllerBase.increment');
    try {
      return super.increment(value);
    } finally {
      _$VendaMercantilControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contador: ${contador}
    ''';
  }
}
