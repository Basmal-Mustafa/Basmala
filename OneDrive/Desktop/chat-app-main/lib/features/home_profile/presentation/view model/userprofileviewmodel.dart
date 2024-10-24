import 'package:chat_app/features/home_profile/presentation/view%20model/model/user_profile_model.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class UserProfileViewModel extends ChangeNotifier {
  // Model for the user profile
  UserProfileModel _userProfile = UserProfileModel(
    name: 'Marwan Ali',
    phoneNumber: '+01125727329',
    profileImage: 'https://example.com/profile-pic.jpg' // Replace with actual image
  );

  // Getters for the View to access
  UserProfileModel get userProfile => _userProfile;

  // Function to update the profile information
  void updateProfile(String newName, String newPhone) {
    _userProfile.name = newName;
    _userProfile.phoneNumber = newPhone;
    notifyListeners();  // Notify the View of changes
  }

  // Function to update profile image
  void updateProfileImage(String newImageUrl) {
    _userProfile.profileImage = newImageUrl;
    notifyListeners();
  }
}
