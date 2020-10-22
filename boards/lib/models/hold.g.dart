// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hold _$HoldFromJson(Map json) {
  return Hold(json['position'] as int, json['edge'] as int,
      _$enumDecodeNullable(_$HorizontalBoardLocationEnumMap, json['location']));
}

Map<String, dynamic> _$HoldToJson(Hold instance) => <String, dynamic>{
      'position': instance.position,
      'edge': instance.edge,
      'location': _$HorizontalBoardLocationEnumMap[instance.location]
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

const _$HorizontalBoardLocationEnumMap = <HorizontalBoardLocation, dynamic>{
  HorizontalBoardLocation.LEFT: 'LEFT',
  HorizontalBoardLocation.RIGHT: 'RIGHT',
  HorizontalBoardLocation.CENTER: 'CENTER'
};
