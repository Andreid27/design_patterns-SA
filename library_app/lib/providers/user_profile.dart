import 'package:flutter/foundation.dart';

/// User profile model for authentication state management
class UserProfile extends ChangeNotifier {
  String? name;
  String? email;
  String? accessToken;
  String? idToken;
  String? refreshToken;
  String? role; // 'ADMIN' or 'USER'

  void updateTokens({String? access, String? id, String? refresh}) {
    accessToken = access;
    idToken = id;
    refreshToken = refresh;
    notifyListeners();
  }

  void updateProfile({String? newName, String? newEmail, String? newRole}) {
    name = newName;
    email = newEmail;
    if (newRole != null) role = newRole;
    notifyListeners();
  }

  void clear() {
    name = null;
    email = null;
    accessToken = null;
    idToken = null;
    refreshToken = null;
    role = null;
    notifyListeners();
  }

  bool get isLoggedIn => accessToken != null && accessToken!.isNotEmpty;
}
