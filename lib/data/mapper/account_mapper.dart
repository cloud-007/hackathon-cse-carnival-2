import 'package:reachout/data/datasource/remote/model/profile_response.dart';
import 'package:reachout/data/datasource/remote/model/user_response.dart';
import 'package:reachout/domain/model/account/profile.dart';
import 'package:reachout/domain/model/account/user.dart';

extension ProfileResponseMapper on ProfileResponse {
  Profile toProfile() {
    return Profile(
      id: id,
      mobileNumber: mobileNumber,
      address: address,
      institution: institution,
      occupation: occupation,
      graduationYear: graduationYear,
    );
  }
}

extension UserResponseMapper on UserResponse {
  User toUser() {
    return User(
      id: id,
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      picture: picture,
      profile: profile?.toProfile(),
    );
  }
}
