import 'package:sanjayrb/app/constants/profile_constant.dart';
import 'package:sanjayrb/app/data/models/profile_model.dart';

class ProfileProvider {
  static List<ProfileModel> getProfiles() {
    return ProfileConstant.value;
  }
}
