// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListaModel _$ListaModelFromJson(Map<String, dynamic> json) {
  return _ListaModel.fromJson(json);
}

/// @nodoc
mixin _$ListaModel {
  String? get cod => throw _privateConstructorUsedError;
  set cod(String? value) => throw _privateConstructorUsedError;
  String? get nome => throw _privateConstructorUsedError;
  set nome(String? value) => throw _privateConstructorUsedError;
  String? get textAux => throw _privateConstructorUsedError;
  set textAux(String? value) => throw _privateConstructorUsedError;
  DateTime? get dataHora => throw _privateConstructorUsedError;
  set dataHora(DateTime? value) => throw _privateConstructorUsedError;
  List<ListaItemModel>? get itens => throw _privateConstructorUsedError;
  set itens(List<ListaItemModel>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListaModelCopyWith<ListaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListaModelCopyWith<$Res> {
  factory $ListaModelCopyWith(
          ListaModel value, $Res Function(ListaModel) then) =
      _$ListaModelCopyWithImpl<$Res, ListaModel>;
  @useResult
  $Res call(
      {String? cod,
      String? nome,
      String? textAux,
      DateTime? dataHora,
      List<ListaItemModel>? itens});
}

/// @nodoc
class _$ListaModelCopyWithImpl<$Res, $Val extends ListaModel>
    implements $ListaModelCopyWith<$Res> {
  _$ListaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? nome = freezed,
    Object? textAux = freezed,
    Object? dataHora = freezed,
    Object? itens = freezed,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      textAux: freezed == textAux
          ? _value.textAux
          : textAux // ignore: cast_nullable_to_non_nullable
              as String?,
      dataHora: freezed == dataHora
          ? _value.dataHora
          : dataHora // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itens: freezed == itens
          ? _value.itens
          : itens // ignore: cast_nullable_to_non_nullable
              as List<ListaItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListaModelImplCopyWith<$Res>
    implements $ListaModelCopyWith<$Res> {
  factory _$$ListaModelImplCopyWith(
          _$ListaModelImpl value, $Res Function(_$ListaModelImpl) then) =
      __$$ListaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cod,
      String? nome,
      String? textAux,
      DateTime? dataHora,
      List<ListaItemModel>? itens});
}

/// @nodoc
class __$$ListaModelImplCopyWithImpl<$Res>
    extends _$ListaModelCopyWithImpl<$Res, _$ListaModelImpl>
    implements _$$ListaModelImplCopyWith<$Res> {
  __$$ListaModelImplCopyWithImpl(
      _$ListaModelImpl _value, $Res Function(_$ListaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? nome = freezed,
    Object? textAux = freezed,
    Object? dataHora = freezed,
    Object? itens = freezed,
  }) {
    return _then(_$ListaModelImpl(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: freezed == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String?,
      textAux: freezed == textAux
          ? _value.textAux
          : textAux // ignore: cast_nullable_to_non_nullable
              as String?,
      dataHora: freezed == dataHora
          ? _value.dataHora
          : dataHora // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      itens: freezed == itens
          ? _value.itens
          : itens // ignore: cast_nullable_to_non_nullable
              as List<ListaItemModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListaModelImpl extends _ListaModel {
  _$ListaModelImpl(
      {required this.cod,
      required this.nome,
      required this.textAux,
      required this.dataHora,
      required this.itens})
      : super._();

  factory _$ListaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListaModelImplFromJson(json);

  @override
  String? cod;
  @override
  String? nome;
  @override
  String? textAux;
  @override
  DateTime? dataHora;
  @override
  List<ListaItemModel>? itens;

  @override
  String toString() {
    return 'ListaModel(cod: $cod, nome: $nome, textAux: $textAux, dataHora: $dataHora, itens: $itens)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListaModelImplCopyWith<_$ListaModelImpl> get copyWith =>
      __$$ListaModelImplCopyWithImpl<_$ListaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListaModelImplToJson(
      this,
    );
  }
}

abstract class _ListaModel extends ListaModel {
  factory _ListaModel(
      {required String? cod,
      required String? nome,
      required String? textAux,
      required DateTime? dataHora,
      required List<ListaItemModel>? itens}) = _$ListaModelImpl;
  _ListaModel._() : super._();

  factory _ListaModel.fromJson(Map<String, dynamic> json) =
      _$ListaModelImpl.fromJson;

  @override
  String? get cod;
  set cod(String? value);
  @override
  String? get nome;
  set nome(String? value);
  @override
  String? get textAux;
  set textAux(String? value);
  @override
  DateTime? get dataHora;
  set dataHora(DateTime? value);
  @override
  List<ListaItemModel>? get itens;
  set itens(List<ListaItemModel>? value);
  @override
  @JsonKey(ignore: true)
  _$$ListaModelImplCopyWith<_$ListaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
