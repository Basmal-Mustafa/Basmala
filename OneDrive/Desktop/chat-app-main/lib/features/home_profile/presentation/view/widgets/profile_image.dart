import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('images/profile.png'),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed:(){
                // add function
              } ,
              icon: Icon( Icons.edit),
              color: Colors.white,
            ),// Use ImageProvider here

          ),

        )
    );

  }
}
