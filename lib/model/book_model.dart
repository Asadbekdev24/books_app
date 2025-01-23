import 'package:json_annotation/json_annotation.dart';


part 'book_model.g.dart';


@JsonSerializable()
class BookModel {
    @JsonKey(name: "id")
    String id;
    @JsonKey(name: "title")
    String title;
    @JsonKey(name: "author")
    String author;
    @JsonKey(name: "genre")
    String genre;
    @JsonKey(name: "yearPublished")
    int yearPublished;
    @JsonKey(name: "checkedOut")
    bool checkedOut;
    @JsonKey(name: "isPermanentCollection")
    bool isPermanentCollection;
    @JsonKey(name: "createdAt")
    DateTime createdAt;

    BookModel({
        required this.id,
        required this.title,
        required this.author,
        required this.genre,
        required this.yearPublished,
        required this.checkedOut,
        required this.isPermanentCollection,
        required this.createdAt,
    });

    factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

    Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
