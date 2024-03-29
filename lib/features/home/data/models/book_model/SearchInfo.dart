import 'package:equatable/equatable.dart';

/// textSnippet : "In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind."

class SearchInfo  extends Equatable{
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

  @override
  List<Object?> get props => [
    textSnippet
  ];

}