class Validator {
  Validator._();

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }

    // Aceita letras (incluindo acentos), espaços, hífens e apóstrofos.
    // Garante que tenha pelo menos 2 caracteres e comece com letra.
    final condition = RegExp(r"^[A-Za-zÀ-ÿ][A-Za-zÀ-ÿ\s'\-]{1,}$");

    if (!condition.hasMatch(value.trim())) {
      return 'Nome inválido! Por favor, digite um nome válido!';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }

    final condition = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!condition.hasMatch(value.trim())) {
      return 'E-mail inválido! Por favor, digite um e-mail válido!';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Esse campo não pode ser vazio.';
    }

    // Mínimo 8 caracteres, 1 letra maiúscula, 1 minúscula e 1 número
    final condition = RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$');

    if (!condition.hasMatch(value)) {
      return 'Senha inválida! Use pelo menos 8 caracteres, 1 maiúscula, 1 minúscula e 1 número.';
    }
    return null;
  }

  static String? validateConfirmPassword(String? first, String? second) {
    if (first == null || first.isEmpty) {
      return 'Confirme sua senha.';
    }
    if (first != second) {
      return 'As senhas são diferentes! Por favor, corrija para continuar.';
    }
    return null;
  }
}