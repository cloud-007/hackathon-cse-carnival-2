import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'address') required String? address,
    @JsonKey(name: 'institution') required String? institution,
    @JsonKey(name: 'occupation') required String? occupation,
    @JsonKey(name: 'graduation_year') required int? graduationYear,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
