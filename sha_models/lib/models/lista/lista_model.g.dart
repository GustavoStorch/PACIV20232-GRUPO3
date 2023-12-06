// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListaModelImpl _$$ListaModelImplFromJson(Map<String, dynamic> json) =>
    _$ListaModelImpl(
      cod: json['cod'] as String?,
      nome: json['nome'] as String?,
      textAux: json['textAux'] as String?,
      dataHora: json['dataHora'] == null
          ? null
          : DateTime.parse(json['dataHora'] as String),
      itens: (json['itens'] as List<dynamic>?)
          ?.map((e) => ListaItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListaModelImplToJson(_$ListaModelImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'nome': instance.nome,
      'textAux': instance.textAux,
      'dataHora': instance.dataHora?.toIso8601String(),
      'itens': instance.itens,
    };
