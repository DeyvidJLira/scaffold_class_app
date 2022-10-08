// ignore_for_file: constant_identifier_names

abstract class Strings {
  //#region General
  static const String APP_NAME = "Gulosos App";
  //#endregion

  //#region Pages

  //#region Login Page
  static const LOGIN_TITLE = "Olá,\nseja bem vindo";

  static const LOGIN_FORM_EMAIL_LABEL = "Email";
  static const LOGIN_FORM_EMAIL_HINT = "Insira seu email";
  static const LOGIN_FORM_EMAIL_ERROR = "Informe um email válido!";

  static const LOGIN_FORM_PASSWORD_LABEL = "Senha";
  static const LOGIN_FORM_PASSWORD_HINT = "Insira sua senha";
  static const LOGIN_FORM_PASSWORD_HELPER = "Mín. 6 e máx. 20 caracteres";
  static const LOGIN_FORM_PASSWORD_ERROR = "Mín. 6 e máx. 20 caracteres!";

  static const LOGIN_BUTTON_ENTER = "Entrar";

  static const LOGIN_DIALOG_AUTH_FAILED_TITLE = "Ops! Algo deu errado!";
  static const LOGIN_DIALOG_AUTH_FAILED_DESCRIPTION =
      "Email/Senha está(ão) inválido(s)!";
  static const LOGIN_DIALOG_AUTH_FAILED_BUTTON = "Entendi";
  //#endregion

  //#region Home Page
  static const String HOME_TITLE = "Gulosos";

  static const String HOME_LABEL_PRODUCTS = "Produtos";

  static const String HOME_DRAWER_HOME = "Início";
  static const String HOME_DRAWER_CATEGORIES = "Categorias";
  static const String HOME_DRAWER_INVITE = "Convide";
  static const String HOME_DRAWER_ABOUT = "Sobre o app";

  static const String HOME_DRAWER_LABEL_WELCOME = "Seja Bem Vindo(a),\n%1s";

  static const String HOME_DRAWER_BUTTON_EXIT = "Sair";
  //#endregion

  //#region Categories Page
  static const String CATEGORIES_TITLE = "Categorias";
  //#region

  //#region Invite Page
  static const String INVITE_TITLE = "Convide";
  static const String INVITE_DESCRIPTION =
      "Tem gostado da experiência? Avise aos seus amigos para ter essa experiência fantástica!";
  static const String INVITE_BUTTON = "Convidar";

  static const String INVITE_DIALOG_TITLE = "Convite Enviado";
  static const String INVITE_DIALOG_DESCRIPTION =
      "Muito obrigado por convidar seus amigos(as)!";
  static const String INVITE_DIALOG_BUTTON = "Okay";
  //#endregion

  //#region About Page
  static const String ABOUT_TITLE = "Sobre o App";
  static const String ABOUT_DESCRIPTION =
      "Um delivery prático e rápido como você nunca viu!\n\nGulosos App é onde você encontra uma variedade incrível de ofertas de produtos que são super deliciosos, explore essa incrível experiência!";
  static const String ABOUT_VERSION = "0.1.0";
  //#endregion
  //#endregion

  //#region Components
  static const String COMPONENT_CATEGORY_BUTTON_VISIT = "Visitar";
  //#endregion
}
