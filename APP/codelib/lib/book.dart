class Book {
  Source source;
  String author;
  String title;
  String content;

  Book(
      {required this.source,
        required this.author,
        required this.title,
        required this.content});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        content: json["content"]);
  }
}

class Source {
  String id;
  String name;

  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json["id"] as String,
      name: json["name"] as String,
    );
  }
}
