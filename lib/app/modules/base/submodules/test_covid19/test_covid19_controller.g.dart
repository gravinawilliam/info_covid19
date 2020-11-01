// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_covid19_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TestCovid19Controller = BindInject(
  (i) => TestCovid19Controller(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TestCovid19Controller on _TestCovid19ControllerBase, Store {
  final _$sintomasComunsContadorAtom =
      Atom(name: '_TestCovid19ControllerBase.sintomasComunsContador');

  @override
  int get sintomasComunsContador {
    _$sintomasComunsContadorAtom.reportRead();
    return super.sintomasComunsContador;
  }

  @override
  set sintomasComunsContador(int value) {
    _$sintomasComunsContadorAtom
        .reportWrite(value, super.sintomasComunsContador, () {
      super.sintomasComunsContador = value;
    });
  }

  final _$sintomasMenosComunsContadorAtom =
      Atom(name: '_TestCovid19ControllerBase.sintomasMenosComunsContador');

  @override
  int get sintomasMenosComunsContador {
    _$sintomasMenosComunsContadorAtom.reportRead();
    return super.sintomasMenosComunsContador;
  }

  @override
  set sintomasMenosComunsContador(int value) {
    _$sintomasMenosComunsContadorAtom
        .reportWrite(value, super.sintomasMenosComunsContador, () {
      super.sintomasMenosComunsContador = value;
    });
  }

  final _$sintomasGravesContadorAtom =
      Atom(name: '_TestCovid19ControllerBase.sintomasGravesContador');

  @override
  int get sintomasGravesContador {
    _$sintomasGravesContadorAtom.reportRead();
    return super.sintomasGravesContador;
  }

  @override
  set sintomasGravesContador(int value) {
    _$sintomasGravesContadorAtom
        .reportWrite(value, super.sintomasGravesContador, () {
      super.sintomasGravesContador = value;
    });
  }

  final _$sintomasPacienteAtom =
      Atom(name: '_TestCovid19ControllerBase.sintomasPaciente');

  @override
  List<String> get sintomasPaciente {
    _$sintomasPacienteAtom.reportRead();
    return super.sintomasPaciente;
  }

  @override
  set sintomasPaciente(List<String> value) {
    _$sintomasPacienteAtom.reportWrite(value, super.sintomasPaciente, () {
      super.sintomasPaciente = value;
    });
  }

  final _$_TestCovid19ControllerBaseActionController =
      ActionController(name: '_TestCovid19ControllerBase');

  @override
  dynamic guardaSintomas(dynamic value) {
    final _$actionInfo = _$_TestCovid19ControllerBaseActionController
        .startAction(name: '_TestCovid19ControllerBase.guardaSintomas');
    try {
      return super.guardaSintomas(value);
    } finally {
      _$_TestCovid19ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic verificaSintomasPaciente() {
    final _$actionInfo =
        _$_TestCovid19ControllerBaseActionController.startAction(
            name: '_TestCovid19ControllerBase.verificaSintomasPaciente');
    try {
      return super.verificaSintomasPaciente();
    } finally {
      _$_TestCovid19ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String defineResultadoTeste() {
    final _$actionInfo = _$_TestCovid19ControllerBaseActionController
        .startAction(name: '_TestCovid19ControllerBase.defineResultadoTeste');
    try {
      return super.defineResultadoTeste();
    } finally {
      _$_TestCovid19ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sintomasComunsContador: ${sintomasComunsContador},
sintomasMenosComunsContador: ${sintomasMenosComunsContador},
sintomasGravesContador: ${sintomasGravesContador},
sintomasPaciente: ${sintomasPaciente}
    ''';
  }
}
