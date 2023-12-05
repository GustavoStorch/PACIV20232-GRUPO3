// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListaModelImpl _$$ListaModelImplFromJson(Map<String, dynamic> json) =>
    _$ListaModelImpl(
      cod: json['cod'] as int?,
      nome: json['nome'] as String?,
      textAux: json['textAux'] as String?,
      itens:
          (json['itens'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ListaModelImplToJson(_$ListaModelImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'nome': instance.nome,
      'textAux': instance.textAux,
      'itens': instance.itens,
    };
