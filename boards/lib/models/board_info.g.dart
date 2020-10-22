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
      (json['holds'] as List)
          ?.map((e) => e == null
              ? null
              : Hold.fromJson((e as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                )))
          ?.toList());
}

Map<String, dynamic> _$BoardInfoToJson(BoardInfo instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'type': instance.type?.toJson(),
      'holds': instance.holds?.map((e) => e?.toJson())?.toList()
    };
