// import 'package:ahtizam/src/configs/hive_configs/hive_boxes.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import '../../../../constants/keys.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../app/domain/model/user_information.dart';

// part 'auth_service.g.dart';

// @Riverpod(keepAlive: true)
// Future<SharedPreferences> sharedPreferences(Ref ref) async =>
//     await SharedPreferences.getInstance();

// @Riverpod(keepAlive: true)
// class UserData extends _$UserData {
//   @override
//   String? build() {
//     final sharedPrefs = ref.watch(sharedPreferencesProvider).requireValue;
//     final token = sharedPrefs.getString(Keys.token);
//     if (token != null) {
//       return sharedPrefs.getString(Keys.token)!;
//     }
//     return null;
//   }

//   static const String _userInfo = HiveBoxesName.userInfoBox;
//   static UserInformation _defualtUserinfo = UserInformation.empty();

//   Box<UserInformation> get _userinfoBox => Hive.box<UserInformation>(_userInfo);

//   UserInformation get userinformation =>
//       _userinfoBox.get(0) ?? _defualtUserinfo;
//   Future<void> setData(String token) async {
//     final sharedPrefs = ref.read(sharedPreferencesProvider).requireValue;
//     await sharedPrefs.setString(Keys.token, token);

//     // state = token;
//   }

//   Future<void> removeData() async {
//     final sharedPrefs = ref.read(sharedPreferencesProvider).requireValue;
//     await sharedPrefs.remove(Keys.token);
//     debugPrint("TOKEN REMOVED SUCCESSFULLY");
//     state = null;
//   }

//   Future<void> saveUserInfo(UserInformation info) async {
//     _defualtUserinfo = info;
//     await _userinfoBox.put(0, info);
//   }

//   UserData? getUserData() {
//     final box = Hive.box<UserData>(HiveBoxesName.userInfoBox);
//     return box.get(HiveBoxesName.userInfoBox); // Retrieve stored object
//   }
// }

// @riverpod
// bool isAuthinticated(Ref ref) {
//   return ref.watch(userDataProvider) != null;
// }

// /// **Check if the app is opened for the first time**
// @riverpod
// bool isFirstTimeOpeningApp(Ref ref) {
//   final sharedPrefs = ref.watch(sharedPreferencesProvider).requireValue;
//   return sharedPrefs.getBool(Keys.firstTime) ??
//       true; // Default to true (first time)
// }

// /// **Mark the app as opened (Not first time anymore)**
// Future<void> markAppOpened(WidgetRef ref) async {
//   final sharedPrefs = await SharedPreferences.getInstance();
//   await sharedPrefs.setBool(Keys.firstTime, false);
// }
