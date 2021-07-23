// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardInfo _$BoardInfoFromJson(Map json) {
  return BoardInfo(
    json['displayName'] as String,
    BoardType.fromJson(Map<String, dynamic>.from(json['type'] as Map)),
    json['homePage'] as String,
    (json['holds'] as List<dynamic>)
        .map((e) => Hold.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  )..version = json['version'] as int;
}

Map<String, dynamic> _$BoardInfoToJson(BoardInfo instance) => <String, dynamic>{
      'version': instance.version,
      'displayName': instance.displayName,
      'type': instance.type.toJson(),
      'holds': instance.holds.map((e) => e.toJson()).toList(),
      'homePage': instance.homePage,
    };
