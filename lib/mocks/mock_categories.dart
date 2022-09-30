import 'package:scaffold_class_app/model/category.dart';

abstract class MockCategories {
  static List<Category> getCategories() {
    return [
      Category(
          name: "Frutas",
          description: "Frustas fresquinhas para você!",
          imageURL:
              "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/as-frutas-sao-alimentos-importantes-para-nossa-saude-alem-serem-muito-saborosas-5bdaec2def6bb.jpg",
          products: []),
      Category(
          name: "Pães",
          description: "Pães quentinhos como você gosta!",
          imageURL:
              "https://tauste.vteximg.com.br/arquivos/ids/161245-1000-1000/pao-frances-tauste.jpg?v=637272326494270000",
          products: []),
      Category(
          name: "Vegetais",
          description: "Vegetais como... alguém gosta?",
          imageURL:
              "http://alinefurlan.com.br/wordpress/wp-content/uploads/2017/10/como_comer_mais_vegetais-1_0.jpg",
          products: []),
    ];
  }
}
