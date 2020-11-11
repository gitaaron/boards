// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hold _$HoldFromJson(Map json) {
  return Hold(
      _$enumDecodeNullable(_$HoldTypeEnumMap, json['type']),
      json['order'] as int,
      json['depth'] as int,
      json['position'] as int,
      _$enumDecodeNullable(_$HorizontalBoardLocationEnumMap, json['location']));
}

Map<String, dynamic> _$HoldToJson(Hold instance) => <String, dynamic>{
      'position': instance.position,
      'depth': instance.depth,
      'order': instance.order,
      'location': _$HorizontalBoardLocationEnumMap[instance.location],
      'type': _$HoldTypeEnumMap[instance.type]
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

const _$HoldTypeEnumMap = <HoldType, dynamic>{
  HoldType.EDGE: 'EDGE',
  HoldType.PINCH: 'PINCH',
  HoldType.SLOPER: 'SLOPER',
  HoldType.JUG: 'JUG'
};

const _$HorizontalBoardLocationEnumMap = <HorizontalBoardLocation, dynamic>{
  HorizontalBoardLocation.LEFT: 'LEFT',
  HorizontalBoardLocation.RIGHT: 'RIGHT',
  HorizontalBoardLocation.CENTER: 'CENTER'
};
