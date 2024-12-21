// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyState on _MyState, Store {
  Computed<Color>? _$colorComputed;

  @override
  Color get color => (_$colorComputed ??=
          Computed<Color>(() => super.color, name: '_MyState.color'))
      .value;

  late final _$showElementAAtom =
      Atom(name: '_MyState.showElementA', context: context);

  @override
  bool get showElementA {
    _$showElementAAtom.reportRead();
    return super.showElementA;
  }

  @override
  set showElementA(bool value) {
    _$showElementAAtom.reportWrite(value, super.showElementA, () {
      super.showElementA = value;
    });
  }

  late final _$_MyStateActionController =
      ActionController(name: '_MyState', context: context);

  @override
  void toggleElementA() {
    final _$actionInfo =
        _$_MyStateActionController.startAction(name: '_MyState.toggleElementA');
    try {
      return super.toggleElementA();
    } finally {
      _$_MyStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showElementA: ${showElementA},
color: ${color}
    ''';
  }
}
