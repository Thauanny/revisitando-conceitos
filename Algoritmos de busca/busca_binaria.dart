void main(List<String> args) {
  List<int> lista = [1, 3, 5, 7, 9];
  print(busca_binaria(lista, 7));
}

int? busca_binaria(List<int> lista, int item) {
  int baixo = 0;
  int alto = lista.length - 1;
  while (baixo <= alto) {
    int meio = ((baixo + alto) ~/ 2);
    int chute = lista[meio];
    if (chute == item) {
      return meio;
    } else if (chute > item) {
      alto = meio - 1;
    } else {
      baixo = meio + 1;
    }
  }
  return null;
}
