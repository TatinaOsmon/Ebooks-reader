import 'package:fl_audio_book/constants/Api.dart';
import 'package:fl_audio_book/models/ebook.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

class BookService {
  final http.Client client;

  const BookService(this.client);

  Future<List<Book>> getPopularBooks() async {
    try {
      final uri = Uri.parse(ApiConst.books);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
         final data = json.decode(response.body);
        final books = fromStringList(response.body);
        // final List<Book> books =
        //     List<Book>.from(data.map((bookData) => Book.fromJson(bookData)));
        return books;
      } else {
        log('${response.statusCode}');
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<List<Book>> getRecommendedBooks() async {
    try {
      final uri = Uri.parse(ApiConst.books);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final List<Book> books =
            List<Book>.from(data.map((bookData) => Book.fromJson(bookData)));
        return books;
      } else {
        log('${response.statusCode}');
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<List<Book>> getNewReleaseBooks() async {
    try {
      final uri = Uri.parse(ApiConst.books);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final List<Book> books =
            List<Book>.from(data.map((bookData) => Book.fromJson(bookData)));
        return books;
      } else {
        log('${response.statusCode}');
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<List<Book>> getCategoryBooks() async {
    try {
      final uri = Uri.parse(ApiConst.books);
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        final List<Book> books =
            List<Book>.from(data.map((bookData) => Book.fromJson(bookData)));
        return books;
      } else {
        log('${response.statusCode}');
        return [];
      }
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}

final bookService = BookService(http.Client());
