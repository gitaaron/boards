import 'package:boards/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'board_type.g.dart';


@JsonSerializable(explicitToJson: true, anyMap: true)
class BoardType {
  final String uniqueName;

  BoardType(this.uniqueName);

  factory BoardType.fromEnum(UniqueBoardName uniqueBoardName) {
    assert(_$UniqueBoardNameEnumMap[uniqueBoardName]!=null, '$uniqueBoardName not found');
    return BoardType(_$UniqueBoardNameEnumMap[uniqueBoardName]!);
  }

  Map<String, dynamic> toJson() => _$BoardTypeToJson(this);
  factory BoardType.fromJson(Map<String, dynamic> json) => _$BoardTypeFromJson(json);

}

@JsonSerializable(explicitToJson: true, anyMap: true)
class UniqueBoardType {
  final UniqueBoardName uniqueBoardName;

  UniqueBoardType(this.uniqueBoardName);

  Map<String, dynamic> toJson() => _$UniqueBoardTypeToJson(this);
  factory UniqueBoardType.fromJson(Map<String, dynamic> json) => _$UniqueBoardTypeFromJson(json);

}
