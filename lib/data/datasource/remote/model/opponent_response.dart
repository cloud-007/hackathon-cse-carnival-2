import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/profile_response.dart';

part 'opponent_response.freezed.dart';
part 'opponent_response.g.dart';

@freezed
class OpponentResponse with _$OpponentResponse {
  const factory OpponentResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'picture') required String picture,
    @JsonKey(name: 'consultant') required bool isConsultant,
    @JsonKey(name: 'profile') required ProfileResponse profile,
  }) = _OpponentResponse;

  factory OpponentResponse.fromJson(Map<String, dynamic> json) =>
      _$OpponentResponseFromJson(json);
}
