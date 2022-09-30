import 'package:scaffold_class_app/model/product.dart';

abstract class MockProducts {
  static List<Product> getProducts() {
    return [
      Product(
          name: "Maçã Red Nota Mil mano",
          description: "",
          imageURL:
              "https://w1.ezcdn.com.br/superemkasa/fotos/grande/117869fg1/maca-red-delicious-unidade.jpg"),
      Product(
          name: "Laranja Navelina",
          description: "",
          imageURL:
              "https://w4.ezcdn.com.br/superemkasa/fotos/pequena/115837fp1/laranja-navelina-umbigo-unidade.jpg"),
      Product(
          name: "Mamão Papaia",
          description: "",
          imageURL:
              "https://w1.ezcdn.com.br/superemkasa/fotos/pequena/115740fp1/mamao-papaia-unidade.jpg"),
      Product(
          name: "Batata Pops",
          description: "",
          imageURL:
              "https://w2.ezcdn.com.br/superemkasa/fotos/pequena/119782fp1/batata-pops-mccain-congelada-calabresa-400g.jpg"),
      Product(
          name: "Sorvelandia",
          description: "",
          imageURL:
              "https://w1.ezcdn.com.br/superemkasa/fotos/grande/119742fg1/picole-sorvelandia-de-chocolate-c-6.jpg"),
      Product(
          name: "Anéis Cebolados",
          description: "",
          imageURL:
              "https://w4.ezcdn.com.br/superemkasa/fotos/pequena/119117fp1/aneis-de-cebola-grano-empanados-pre-frito-450g.jpg"),
      Product(
          name: "HotPocket",
          description: "",
          imageURL:
              "https://w1.ezcdn.com.br/superemkasa/fotos/grande/119919fg1/hot-pocket-sadia-x-burger-maionese-grill-145g.jpg"),
      Product(
          name: "Iscas de Frango",
          description: "",
          imageURL:
              "https://w1.ezcdn.com.br/superemkasa/fotos/grande/119885fg1/iscas-sadia-frango-tradicional-300g.jpg")
    ];
  }
}
