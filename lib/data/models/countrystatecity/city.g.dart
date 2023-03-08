// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int,
      provinceId: json['state_id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'state_id': instance.provinceId,
      'name': instance.name,
    };
