import 'package:news_application/Model/Multimedia.dart';

class Article {
  Multimedia? multimedia;
  String? title;
  String? content;

  Article({this.multimedia, this.title, this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return new Article(
      multimedia: Multimedia.fromJson(json['multimedia'] ?? ""),
      title: json['abstract'] ?? "",
      content: json['lead_paragraph'] ?? "",
    );
  }
}
