// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardType _$BoardTypeFromJson(Map json) {
  return BoardType(json['uniqueName'] as String);
}

Map<String, dynamic> _$BoardTypeToJson(BoardType instance) =>
    <String, dynamic>{'uniqueName': instance.uniqueName};

UniqueBoardType _$UniqueBoardTypeFromJson(Map json) {
  return UniqueBoardType(
      _$enumDecodeNullable(_$UniqueBoardNameEnumMap, json['uniqueBoardName']));
}

Map<String, dynamic> _$UniqueBoardTypeToJson(UniqueBoardType instance) =>
    <String, dynamic>{
      'uniqueBoardName': _$UniqueBoardNameEnumMap[instance.uniqueBoardName]
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

const _$UniqueBoardNameEnumMap = <UniqueBoardName, dynamic>{
  UniqueBoardName.monster: 'monster',
  UniqueBoardName.beastmaker_1000: 'beastmaker_1000',
  UniqueBoardName.beastmaker_2000: 'beastmaker_2000',
  UniqueBoardName.metolius_project: 'metolius_project',
  UniqueBoardName.metolius_prime_rib: 'metolius_prime_rib',
  UniqueBoardName.simond_ballsy_board: 'simond_ballsy_board',
  UniqueBoardName.redge_port: 'redge_port',
  UniqueBoardName.topout_project: 'topout_project',
  UniqueBoardName.metolius_wood_grips_2_compact:
      'metolius_wood_grips_2_compact',
  UniqueBoardName.roots_baseline: 'roots_baseline',
  UniqueBoardName.crusher_3: 'crusher_3',
  UniqueBoardName.cliffboard_mini_front: 'cliffboard_mini_front'
};
