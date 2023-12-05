// ignore_for_file: type_init_formals

import 'package:sha_dependencias/bloc_export.dart';

class ListFieldCubit<T> extends Cubit<ListFieldState> {
  ListFieldCubit() : super(ListFieldState(itemSelecionado: null));

  void trocarItemSelecionado(T? item) {
    emit(ListFieldState(itemSelecionado: item));
  }
}

class ListFieldState<T> {
  T? itemSelecionado;

  ListFieldState({required T? this.itemSelecionado});
}
