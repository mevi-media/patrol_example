import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'state.g.dart';

class MyState = _MyState with _$MyState;

abstract class _MyState with Store {
  @observable
  bool showElementA = true;

  @computed
  Color get color => showElementA ? Colors.greenAccent : Colors.redAccent;

  @action
  void toggleElementA() {
    showElementA = !showElementA;
  }
}
