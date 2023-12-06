// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListaItemModel _$ListaItemModelFromJson(Map<String, dynamic> json) {
  return _ListaItemModel.fromJson(json);
}

/// @nodoc
mixin _$ListaItemModel {
  String? get nomeItem => throw _privateConstructorUsedError;
  set nomeItem(String? value) => throw _privateConstructorUsedError;
  bool? get checkItem => throw _privateConstructorUsedError;
  set checkItem(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListaItemModelCopyWith<ListaItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListaItemModelCopyWith<$Res> {
  factory $ListaItemModelCopyWith(
          ListaItemModel value, $Res Function(ListaItemModel) then) =
      _$ListaItemModelCopyWithImpl<$Res, ListaItemModel>;
  @useResult
  $Res call({String? nomeItem, bool? checkItem});
}

/// @nodoc
class _$ListaItemModelCopyWithImpl<$Res, $Val extends ListaItemModel>
    implements $ListaItemModelCopyWith<$Res> {
  _$ListaItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeItem = freezed,
    Object? checkItem = freezed,
  }) {
    return _then(_value.copyWith(
      nomeItem: freezed == nomeItem
          ? _value.nomeItem
          : nomeItem // ignore: cast_nullable_to_non_nullable
              as String?,
      checkItem: freezed == checkItem
          ? _value.checkItem
          : checkItem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListaItemModelImplCopyWith<$Res>
    implements $ListaItemModelCopyWith<$Res> {
  factory _$$ListaItemModelImplCopyWith(_$ListaItemModelImpl value,
          $Res Function(_$ListaItemModelImpl) then) =
      __$$ListaItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nomeItem, bool? checkItem});
}

/// @nodoc
class __$$ListaItemModelImplCopyWithImpl<$Res>
    extends _$ListaItemModelCopyWithImpl<$Res, _$ListaItemModelImpl>
    implements _$$ListaItemModelImplCopyWith<$Res> {
  __$$ListaItemModelImplCopyWithImpl(
      _$ListaItemModelImpl _value, $Res Function(_$ListaItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomeItem = freezed,
    Object? checkItem = freezed,
  }) {
    return _then(_$ListaItemModelImpl(
      nomeItem: freezed == nomeItem
          ? _value.nomeItem
          : nomeItem // ignore: cast_nullable_to_non_nullable
              as String?,
      checkItem: freezed == checkItem
          ? _value.checkItem
          : checkItem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListaItemModelImpl extends _ListaItemModel {
  _$ListaItemModelImpl({required this.nomeItem, required this.checkItem})
      : super._();

  factory _$ListaItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListaItemModelImplFromJson(json);

  @override
  String? nomeItem;
  @override
  bool? checkItem;

  @override
  String toString() {
    return 'ListaItemModel(nomeItem: $nomeItem, checkItem: $checkItem)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListaItemModelImplCopyWith<_$ListaItemModelImpl> get copyWith =>
      __$$ListaItemModelImplCopyWithImpl<_$ListaItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListaItemModelImplToJson(
      this,
    );
  }
}

abstract class _ListaItemModel extends ListaItemModel {
  factory _ListaItemModel(
      {required String? nomeItem,
      required bool? checkItem}) = _$ListaItemModelImpl;
  _ListaItemModel._() : super._();

  factory _ListaItemModel.fromJson(Map<String, dynamic> json) =
      _$ListaItemModelImpl.fromJson;

  @override
  String? get nomeItem;
  set nomeItem(String? value);
  @override
  bool? get checkItem;
  set checkItem(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$ListaItemModelImplCopyWith<_$ListaItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
