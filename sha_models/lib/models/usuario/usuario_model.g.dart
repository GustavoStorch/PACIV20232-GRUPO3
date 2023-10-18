// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioModelImpl _$$UsuarioModelImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioModelImpl(
      cod: json['cod'] as int?,
      nome: json['nome'] as String?,
      email: json['email'] as String?,
      senha: json['senha'] as String?,
      senhaConfirmacao: json['senhaConfirmacao'] as String?,
    );

Map<String, dynamic> _$$UsuarioModelImplToJson(_$UsuarioModelImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'nome': instance.nome,
      'email': instance.email,
      'senha': instance.senha,
      'senhaConfirmacao': instance.senhaConfirmacao,
    };
