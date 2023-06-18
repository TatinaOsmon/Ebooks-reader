// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

List<Book> fromStringList(String source) =>
    (jsonDecode(source) as List).map((e) => Book.fromJson(e)).toList();

class Book {
  final String name;
  final String image;
  final double rate;
  final String view;
  final String author;

  Book({
    required this.name,
    required this.image,
    required this.rate,
    required this.view,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      name: json['name'] as String,
      image: json['image'] as String,
      rate: json['rate'] as double,
      view: json['view'] as String,
      author: json['author'] as String,
    );
  }
}

class RecommendedBooks {
  final List<Book> recommendedForYou;
  final List<Book> newReleases;

  RecommendedBooks({
    required this.recommendedForYou,
    required this.newReleases,
  });
}

class BookData {
  final List<Book> popularList;
  // final RecommendedBooks recommended;

  BookData({
    required this.popularList,
    // required this.recommended,
  });
}
