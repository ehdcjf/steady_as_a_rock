class ArockInfo {
  int? id;
  String quote; // 명언
  String who; // 인물
  int star; // 별점
  int birthYear; // 태어난 날
  int deathYear; // 죽은 날

  ArockInfo({
    this.id,
    required this.quote,
    required this.who,
    required this.star,
    required this.birthYear,
    required this.deathYear,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quote': quote,
      'who': who,
      'star': star,
      'birthYear': birthYear,
      'deathYear': deathYear
    };
  }

  factory ArockInfo.fromMap(Map<String, dynamic> map) {
    return ArockInfo(
      id: map['id'],
      quote: map['quote'],
        who: map['who'],
        star: map['star'],
      birthYear: map['birthYear'],
        deathYear: map['deathYear']
    );
  }
}
