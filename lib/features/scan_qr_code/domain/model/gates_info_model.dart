import 'package:freezed_annotation/freezed_annotation.dart';
part 'gates_info_model.freezed.dart';
part 'gates_info_model.g.dart';

@freezed
abstract class GatesInfoModel with _$GatesInfoModel {
  const factory GatesInfoModel({
    @JsonKey(name: "name") required String? nameId,
    @JsonKey(name: "gate_name") required String? gateName,
    @JsonKey(name: "active") required int active,
    required double? rating,
  }) = _GatesInfoModel;

  factory GatesInfoModel.fromJson(Map<String, dynamic> json) =>
      _$GatesInfoModelFromJson(json);
}
