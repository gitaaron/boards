// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hold _$HoldFromJson(Map json) {
  return Hold(
    _$enumDecode(_$HoldTypeEnumMap, json['type']),
    json['order'] as int,
    json['depth'] as int?,
    json['position'] as int,
    _$enumDecode(_$HorizontalBoardLocationEnumMap, json['location']),
  );
}

Map<String, dynamic> _$HoldToJson(Hold instance) => <String, dynamic>{
      'position': instance.position,
      'depth': instance.depth,
      'order': instance.order,
      'location': _$HorizontalBoardLocationEnumMap[instance.location],
      'type': _$HoldTypeEnumMap[instance.type],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$HoldTypeEnumMap = {
  HoldType.EDGE: 'EDGE',
  HoldType.PINCH: 'PINCH',
  HoldType.SLOPER: 'SLOPER',
  HoldType.JUG: 'JUG',
};

const _$HorizontalBoardLocationEnumMap = {
  HorizontalBoardLocation.LEFT: 'LEFT',
  HorizontalBoardLocation.RIGHT: 'RIGHT',
  HorizontalBoardLocation.CENTER: 'CENTER',
};
