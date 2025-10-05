// features/guests/domain/guest_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_model.freezed.dart';
part 'guest_model.g.dart';

@freezed
abstract class GuestModel with _$GuestModel {
  const factory GuestModel({
    /// API fields (sample)
    required String name,                // "OINV-0008"  -> id
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    String? occasion,                    // "OCC-2025-007"
    @JsonKey(name: 'occasion_name') String? occasionName,
    @JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi)
    required RsvpStatus rsvpStatus,
    @JsonKey(name: 'party_size') @Default(1) int partySize,
    @JsonKey(name: 'checkin_count') @Default(1) int checkinCount,
  }) = _GuestModel;

  const GuestModel._();

  // String get id => name;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
// features/guests/domain/rsvp_status.dart
enum RsvpStatus {all, confirmed, declined,notSent,failed,  pending }

RsvpStatus rsvpFromApi(String? s) {
  switch ((s ?? '').toLowerCase()) {
    case 'all':
      return RsvpStatus.all;
    case 'confirmed':
      return RsvpStatus.confirmed;
    case 'declined':
      return RsvpStatus.declined;

    case 'Not Sent':
      return RsvpStatus.notSent;
    case 'failed':
      return RsvpStatus.failed;
    default:
      return RsvpStatus.pending;
  }
}

String rsvpToApi(RsvpStatus s) { 
  switch (s) {
    // case (RsvpStatus.all) :
    //   return "all";
    case (RsvpStatus.confirmed) :
      return "Confirmed";
    case (RsvpStatus.declined) :
      return "Declined";
    case (RsvpStatus.pending) :
      return "Pending";
    case (RsvpStatus.failed) :
      return "Failed";
    case (RsvpStatus.notSent) :
      return "Not Sent";
    
    default:
      return "";
  }
}