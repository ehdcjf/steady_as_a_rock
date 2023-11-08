class ArockInfo {
  int? id;
  String quote; // 명언
  String from; // 인물
  String birthYear; // 태어난 날
  String deathYear; // 죽은 날

  ArockInfo({
    this.id,
    required this.quote,
    required this.from,
    required this.birthYear,
    required this.deathYear,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quote': quote,
      'birthYear': birthYear,
      'deatYear': deathYear,
    };
  }

  factory ArockInfo.fromMap(Map<String, dynamic> map) {
    return ArockInfo(
      id: map['id'],
      quote: map['quote'],
      from: map['from'],
      birthYear: map['birthYear'],
      deathYear: map['deathYear'],
    );
  }
}
