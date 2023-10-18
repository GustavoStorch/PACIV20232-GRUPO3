import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario_model.g.dart';
part 'usuario_model.freezed.dart';

@unfreezed
sealed class UsuarioModel with _$UsuarioModel {
  const UsuarioModel._();

  factory UsuarioModel({
    required int? cod,
    required String? nome,
    required String? email,
    required String? senha,
    required String? senhaConfirmacao,
  }) = _UsuarioModel;

  factory UsuarioModel.fromJson(Map<String, Object?> json) =>
      _$UsuarioModelFromJson(json);

  static UsuarioModel copy(UsuarioModel usuario) {
    return UsuarioModel.fromJson(usuario.toJson());
  }

  factory UsuarioModel.empty() => UsuarioModel(
        cod: 0,
        nome: '',
        email: '',
        senha: '',
        senhaConfirmacao: '',
      );
}
