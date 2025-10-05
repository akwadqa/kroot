// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestModel _$GuestModelFromJson(Map<String, dynamic> json) => _GuestModel(
  name: json['name'] as String,
  fullName: json['full_name'] as String,
  whatsappNumber: json['whatsapp_number'] as String?,
  occasion: json['occasion'] as String?,
  occasionName: json['occasion_name'] as String?,
  rsvpStatus: rsvpFromApi(json['rsvp_status'] as String?),
  partySize: (json['party_size'] as num?)?.toInt() ?? 1,
  checkinCount: (json['checkin_count'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$GuestModelToJson(_GuestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'whatsapp_number': instance.whatsappNumber,
      'occasion': instance.occasion,
      'occasion_name': instance.occasionName,
      'rsvp_status': rsvpToApi(instance.rsvpStatus),
      'party_size': instance.partySize,
      'checkin_count': instance.checkinCount,
    };
