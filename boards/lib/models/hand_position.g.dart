// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hand_position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HandPosition _$HandPositionFromJson(Map json) {
  return HandPosition(_$enumDecodeNullable(_$HandEnumMap, json['hand']),
      json['position'] as int);
}

Map<String, dynamic> _$HandPositionToJson(HandPosition instance) =>
    <String, dynamic>{
      'hand': _$HandEnumMap[instance.hand],
      'position': instance.position
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$HandEnumMap = <Hand, dynamic>{Hand.LEFT: 'LEFT', Hand.RIGHT: 'RIGHT'};
