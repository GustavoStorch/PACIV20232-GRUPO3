import 'package:freezed_annotation/freezed_annotation.dart';

part 'lista_model.g.dart';
part 'lista_model.freezed.dart';

@unfreezed
sealed class ListaModel with _$ListaModel {
  const ListaModel._();

  factory ListaModel({
    required int? cod,
    required String? nome,
    required String? textAux,
    required List<String>? itens,
  }) = _ListaModel;

  factory ListaModel.fromJson(Map<String, Object?> json) =>
      _$ListaModelFromJson(json);

  static ListaModel copy(ListaModel lista) {
    return ListaModel.fromJson(lista.toJson());
  }

  factory ListaModel.empty() => ListaModel(
        cod: 0,
        nome: '',
        textAux: '',
        itens: [],
      );
}
