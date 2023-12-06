import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sha_models/models/lista_item/lista_item_model.dart';

part 'lista_model.g.dart';
part 'lista_model.freezed.dart';

@unfreezed
sealed class ListaModel with _$ListaModel {
  const ListaModel._();

  factory ListaModel({
    required String? cod,
    required String? nome,
    required String? textAux,
    required DateTime? dataHora,
    required List<ListaItemModel>? itens,
  }) = _ListaModel;

  factory ListaModel.fromJson(Map<String, Object?> json) =>
      _$ListaModelFromJson(json);

  static ListaModel copy(ListaModel lista) {
    return ListaModel.fromJson(lista.toJson());
  }

  factory ListaModel.empty() => ListaModel(
        cod: '',
        nome: '',
        textAux: '',
        dataHora: DateTime.now(),
        itens: [],
      );
}
