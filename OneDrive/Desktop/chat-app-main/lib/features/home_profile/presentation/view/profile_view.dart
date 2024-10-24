import 'package:chat_app/features/home_profile/presentation/view/profile_body.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
