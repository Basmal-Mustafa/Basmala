import 'package:chat_app/features/home_profile/presentation/view%20model/userprofileviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserProfileViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green[400],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // profile picture
            CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage(viewModel.userProfile.profileImage),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //add fun pressed
                    },
                  ),
                )),
            SizedBox(
              height: 20,
            ),

            //Name TextFelid
            TextField(
              controller:
                  TextEditingController(text: viewModel.userProfile.name),
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (value) {
                viewModel.updateProfile(
                    value, viewModel.userProfile.phoneNumber);
              },
            ),
            SizedBox(
              height: 20,
            ),

            //Phone Number TextFiled

            TextField(
              controller: TextEditingController(
                  text: viewModel.userProfile.phoneNumber),
              decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onChanged: (value) {
                viewModel.updateProfile(
                    viewModel.userProfile.phoneNumber, value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            // save button
            ElevatedButton.icon(
              onPressed: () {
                //fun to save btn
              },
              icon: Icon(Icons.save),
              label: Text('Save Profile'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
