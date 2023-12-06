import 'package:freezed_annotation/freezed_annotation.dart';

part 'lista_item_model.g.dart';
part 'lista_item_model.freezed.dart';

@unfreezed
sealed class ListaItemModel with _$ListaItemModel {
  const ListaItemModel._();

  factory ListaItemModel({
    required String? nomeItem,
    required bool? checkItem,
  }) = _ListaItemModel;

  factory ListaItemModel.fromJson(Map<String, Object?> json) =>
      _$ListaItemModelFromJson(json);

  static ListaItemModel copy(ListaItemModel listaItem) {
    return ListaItemModel.fromJson(listaItem.toJson());
  }

  factory ListaItemModel.empty() => ListaItemModel(
        nomeItem: '',
        checkItem: false,
      );
}
