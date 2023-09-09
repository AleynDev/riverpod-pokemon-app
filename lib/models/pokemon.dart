class Pokemon {
  final int id;
  final String name;

  Pokemon({
    required this.id,
    required this.name,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final url = json['url'] as String;
    final id = int.parse(url.split('/').elementAt(url.split('/').length - 2));

    return Pokemon(
      id: id,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
