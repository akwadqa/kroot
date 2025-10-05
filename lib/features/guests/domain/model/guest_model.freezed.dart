// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GuestModel {

/// API fields (sample)
 String get name;// "OINV-0008"  -> id
@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'whatsapp_number') String? get whatsappNumber; String? get occasion;// "OCC-2025-007"
@JsonKey(name: 'occasion_name') String? get occasionName;@JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi) RsvpStatus get rsvpStatus;@JsonKey(name: 'party_size') int get partySize;@JsonKey(name: 'checkin_count') int get checkinCount;
/// Create a copy of GuestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestModelCopyWith<GuestModel> get copyWith => _$GuestModelCopyWithImpl<GuestModel>(this as GuestModel, _$identity);

  /// Serializes this GuestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.occasion, occasion) || other.occasion == occasion)&&(identical(other.occasionName, occasionName) || other.occasionName == occasionName)&&(identical(other.rsvpStatus, rsvpStatus) || other.rsvpStatus == rsvpStatus)&&(identical(other.partySize, partySize) || other.partySize == partySize)&&(identical(other.checkinCount, checkinCount) || other.checkinCount == checkinCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,fullName,whatsappNumber,occasion,occasionName,rsvpStatus,partySize,checkinCount);

@override
String toString() {
  return 'GuestModel(name: $name, fullName: $fullName, whatsappNumber: $whatsappNumber, occasion: $occasion, occasionName: $occasionName, rsvpStatus: $rsvpStatus, partySize: $partySize, checkinCount: $checkinCount)';
}


}

/// @nodoc
abstract mixin class $GuestModelCopyWith<$Res>  {
  factory $GuestModelCopyWith(GuestModel value, $Res Function(GuestModel) _then) = _$GuestModelCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'whatsapp_number') String? whatsappNumber, String? occasion,@JsonKey(name: 'occasion_name') String? occasionName,@JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi) RsvpStatus rsvpStatus,@JsonKey(name: 'party_size') int partySize,@JsonKey(name: 'checkin_count') int checkinCount
});




}
/// @nodoc
class _$GuestModelCopyWithImpl<$Res>
    implements $GuestModelCopyWith<$Res> {
  _$GuestModelCopyWithImpl(this._self, this._then);

  final GuestModel _self;
  final $Res Function(GuestModel) _then;

/// Create a copy of GuestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? fullName = null,Object? whatsappNumber = freezed,Object? occasion = freezed,Object? occasionName = freezed,Object? rsvpStatus = null,Object? partySize = null,Object? checkinCount = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: freezed == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String?,occasion: freezed == occasion ? _self.occasion : occasion // ignore: cast_nullable_to_non_nullable
as String?,occasionName: freezed == occasionName ? _self.occasionName : occasionName // ignore: cast_nullable_to_non_nullable
as String?,rsvpStatus: null == rsvpStatus ? _self.rsvpStatus : rsvpStatus // ignore: cast_nullable_to_non_nullable
as RsvpStatus,partySize: null == partySize ? _self.partySize : partySize // ignore: cast_nullable_to_non_nullable
as int,checkinCount: null == checkinCount ? _self.checkinCount : checkinCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GuestModel].
extension GuestModelPatterns on GuestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuestModel value)  $default,){
final _that = this;
switch (_that) {
case _GuestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuestModel value)?  $default,){
final _that = this;
switch (_that) {
case _GuestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'whatsapp_number')  String? whatsappNumber,  String? occasion, @JsonKey(name: 'occasion_name')  String? occasionName, @JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi)  RsvpStatus rsvpStatus, @JsonKey(name: 'party_size')  int partySize, @JsonKey(name: 'checkin_count')  int checkinCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestModel() when $default != null:
return $default(_that.name,_that.fullName,_that.whatsappNumber,_that.occasion,_that.occasionName,_that.rsvpStatus,_that.partySize,_that.checkinCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'whatsapp_number')  String? whatsappNumber,  String? occasion, @JsonKey(name: 'occasion_name')  String? occasionName, @JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi)  RsvpStatus rsvpStatus, @JsonKey(name: 'party_size')  int partySize, @JsonKey(name: 'checkin_count')  int checkinCount)  $default,) {final _that = this;
switch (_that) {
case _GuestModel():
return $default(_that.name,_that.fullName,_that.whatsappNumber,_that.occasion,_that.occasionName,_that.rsvpStatus,_that.partySize,_that.checkinCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'whatsapp_number')  String? whatsappNumber,  String? occasion, @JsonKey(name: 'occasion_name')  String? occasionName, @JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi)  RsvpStatus rsvpStatus, @JsonKey(name: 'party_size')  int partySize, @JsonKey(name: 'checkin_count')  int checkinCount)?  $default,) {final _that = this;
switch (_that) {
case _GuestModel() when $default != null:
return $default(_that.name,_that.fullName,_that.whatsappNumber,_that.occasion,_that.occasionName,_that.rsvpStatus,_that.partySize,_that.checkinCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuestModel extends GuestModel {
  const _GuestModel({required this.name, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'whatsapp_number') this.whatsappNumber, this.occasion, @JsonKey(name: 'occasion_name') this.occasionName, @JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi) required this.rsvpStatus, @JsonKey(name: 'party_size') this.partySize = 1, @JsonKey(name: 'checkin_count') this.checkinCount = 1}): super._();
  factory _GuestModel.fromJson(Map<String, dynamic> json) => _$GuestModelFromJson(json);

/// API fields (sample)
@override final  String name;
// "OINV-0008"  -> id
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'whatsapp_number') final  String? whatsappNumber;
@override final  String? occasion;
// "OCC-2025-007"
@override@JsonKey(name: 'occasion_name') final  String? occasionName;
@override@JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi) final  RsvpStatus rsvpStatus;
@override@JsonKey(name: 'party_size') final  int partySize;
@override@JsonKey(name: 'checkin_count') final  int checkinCount;

/// Create a copy of GuestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestModelCopyWith<_GuestModel> get copyWith => __$GuestModelCopyWithImpl<_GuestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.occasion, occasion) || other.occasion == occasion)&&(identical(other.occasionName, occasionName) || other.occasionName == occasionName)&&(identical(other.rsvpStatus, rsvpStatus) || other.rsvpStatus == rsvpStatus)&&(identical(other.partySize, partySize) || other.partySize == partySize)&&(identical(other.checkinCount, checkinCount) || other.checkinCount == checkinCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,fullName,whatsappNumber,occasion,occasionName,rsvpStatus,partySize,checkinCount);

@override
String toString() {
  return 'GuestModel(name: $name, fullName: $fullName, whatsappNumber: $whatsappNumber, occasion: $occasion, occasionName: $occasionName, rsvpStatus: $rsvpStatus, partySize: $partySize, checkinCount: $checkinCount)';
}


}

/// @nodoc
abstract mixin class _$GuestModelCopyWith<$Res> implements $GuestModelCopyWith<$Res> {
  factory _$GuestModelCopyWith(_GuestModel value, $Res Function(_GuestModel) _then) = __$GuestModelCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'whatsapp_number') String? whatsappNumber, String? occasion,@JsonKey(name: 'occasion_name') String? occasionName,@JsonKey(name: 'rsvp_status', fromJson: rsvpFromApi, toJson: rsvpToApi) RsvpStatus rsvpStatus,@JsonKey(name: 'party_size') int partySize,@JsonKey(name: 'checkin_count') int checkinCount
});




}
/// @nodoc
class __$GuestModelCopyWithImpl<$Res>
    implements _$GuestModelCopyWith<$Res> {
  __$GuestModelCopyWithImpl(this._self, this._then);

  final _GuestModel _self;
  final $Res Function(_GuestModel) _then;

/// Create a copy of GuestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? fullName = null,Object? whatsappNumber = freezed,Object? occasion = freezed,Object? occasionName = freezed,Object? rsvpStatus = null,Object? partySize = null,Object? checkinCount = null,}) {
  return _then(_GuestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: freezed == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String?,occasion: freezed == occasion ? _self.occasion : occasion // ignore: cast_nullable_to_non_nullable
as String?,occasionName: freezed == occasionName ? _self.occasionName : occasionName // ignore: cast_nullable_to_non_nullable
as String?,rsvpStatus: null == rsvpStatus ? _self.rsvpStatus : rsvpStatus // ignore: cast_nullable_to_non_nullable
as RsvpStatus,partySize: null == partySize ? _self.partySize : partySize // ignore: cast_nullable_to_non_nullable
as int,checkinCount: null == checkinCount ? _self.checkinCount : checkinCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
