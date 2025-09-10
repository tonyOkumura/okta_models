import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_tag_map.g.dart';

@JsonSerializable()
class NoteTagMap extends Equatable {
  const NoteTagMap({required this.noteId, required this.tagId});

  @JsonKey(name: 'note_id')
  final String noteId; // UUID, REFERENCES notes(id)
  @JsonKey(name: 'tag_id')
  final String tagId; // UUID, REFERENCES note_tags(id)

  factory NoteTagMap.fromJson(Map<String, dynamic> json) =>
      _$NoteTagMapFromJson(json);

  Map<String, dynamic> toJson() => _$NoteTagMapToJson(this);

  @override
  List<Object?> get props => [noteId, tagId];

  NoteTagMap copyWith({String? noteId, String? tagId}) {
    return NoteTagMap(
      noteId: noteId ?? this.noteId,
      tagId: tagId ?? this.tagId,
    );
  }
}
