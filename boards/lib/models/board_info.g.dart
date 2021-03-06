// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardInfo _$BoardInfoFromJson(Map json) {
  return BoardInfo(
      json['displayName'] as String,
      json['type'] == null
          ? null
          : BoardType.fromJson((json['type'] as Map)?.map(
              (k, e) => MapEntry(k as String, e),
            )),
      json['homePage'] as String,
      (json['holds'] as List)
          ?.map((e) => e == null
              ? null
              : Hold.fromJson((e as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                )))
          ?.toList())
    ..version = json['version'] as int;
}

Map<String, dynamic> _$BoardInfoToJson(BoardInfo instance) => <String, dynamic>{
      'version': instance.version,
      'displayName': instance.displayName,
      'type': instance.type?.toJson(),
      'holds': instance.holds?.map((e) => e?.toJson())?.toList(),
      'homePage': instance.homePage
    };
