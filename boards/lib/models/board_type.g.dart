// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardType _$BoardTypeFromJson(Map json) {
  return BoardType(
    json['uniqueName'] as String,
  );
}

Map<String, dynamic> _$BoardTypeToJson(BoardType instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
    };

UniqueBoardType _$UniqueBoardTypeFromJson(Map json) {
  return UniqueBoardType(
    _$enumDecode(_$UniqueBoardNameEnumMap, json['uniqueBoardName']),
  );
}

Map<String, dynamic> _$UniqueBoardTypeToJson(UniqueBoardType instance) =>
    <String, dynamic>{
      'uniqueBoardName': _$UniqueBoardNameEnumMap[instance.uniqueBoardName],
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

const _$UniqueBoardNameEnumMap = {
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
  UniqueBoardName.cliffboard_mini_front: 'cliffboard_mini_front',
  UniqueBoardName.cliffboard_mini_back: 'cliffboard_mini_back',
  UniqueBoardName.metolius_simulator_3d: 'metolius_simulator_3d',
  UniqueBoardName.rock_prodigy_training_center: 'rock_prodigy_training_center',
  UniqueBoardName.mountain_rocks: 'mountain_rocks',
  UniqueBoardName.so_ill_all_chalk_no_action: 'so_ill_all_chalk_no_action',
};
