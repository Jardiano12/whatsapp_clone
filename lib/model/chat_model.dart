
class ChatModel {
  final String nome;
  final String messagem;
  final String tempo;
  final String qtd;
  final String avatarUrl;

  ChatModel({this.nome, this.messagem, this.tempo, this.qtd, this.avatarUrl});
}

  List<ChatModel> dummyData = [
    new ChatModel(
        nome: "Rodrigo Marinho",
        messagem: "Ei pow, Bora Tomar uma ?",
        tempo: "15:30",
        qtd: "55",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png"),
    new ChatModel(
        nome: "Tiago",
        messagem: "Mais uma acalorada, topa ?",
        tempo: "15:30",
        qtd: "1",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png"),
    new ChatModel(
        nome: "Moises",
        messagem: "O nome da série é The Witcher",
        tempo: "15:30",
        qtd: "1",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png"),
    new ChatModel(
        nome: "Julio",
        messagem: "Hoje eu atropelei 3 gatos na estrada",
        tempo: "15:30",
        qtd: "1",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png"),
    new ChatModel(
        nome: "Vinicios",
        messagem: "Vamos pra igreja minimizar teus pecados kkk",
        tempo: "15:30",
        qtd: "1",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png"),
    new ChatModel(
        nome: "Marcos",
        messagem: "Cadê o curso seu corrupto?",
        tempo: "15:30",
        qtd: "1",
        avatarUrl: "https://image.flaticon.com/icons/png/512/149/149071.png")
  ];

