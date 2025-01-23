// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      genre: json['genre'] as String,
      yearPublished: (json['yearPublished'] as num).toInt(),
      checkedOut: json['checkedOut'] as bool,
      isPermanentCollection: json['isPermanentCollection'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'genre': instance.genre,
      'yearPublished': instance.yearPublished,
      'checkedOut': instance.checkedOut,
      'isPermanentCollection': instance.isPermanentCollection,
      'createdAt': instance.createdAt.toIso8601String(),
    };
