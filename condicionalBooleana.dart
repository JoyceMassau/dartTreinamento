void main() {
    int idade = 17;
    bool maiorIdade = idade >= 18;
    bool acompanhado = true;

    if(maiorIdade) {
        print("Você pode entrar");
    } else {
      if(acompanhado) {
          print("Você pode entrar, é menor de idade, mas está acompanhado");
      } else {
        print("Você não pode entrar");
      }
    }
}