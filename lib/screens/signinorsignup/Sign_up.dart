import 'package:chatapp/components/primery_button.dart';
import 'package:chatapp/constants.dart';
import 'package:chatapp/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var password;
  var password1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Spacer(flex: 2),
            SizedBox(height: kDefaultPadding * 4),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Full Name',
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kPrimaryColor.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Father Name',
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kPrimaryColor.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kPrimaryColor.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
              ),
              validator: (value) {
                final pattern =
                    (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                final regExp = RegExp(pattern);

                if (value.isEmpty) {
                  return null;
                } else if (value.contains(' ')) {
                  return 'can not have blank spaces';
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter a valid email';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kPrimaryColor.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
              ),
              onChanged: (value) {
                password = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return null;
                } else if (value.contains(' ')) {
                  return 'Password can not contain blank Spaces';
                } else if (value.length < 4) {
                  return 'Enter atleast 7 characters';
                } else
                  return null;
              },
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                fillColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kPrimaryColor.withOpacity(0.1)
                    : kContentColorLightTheme.withOpacity(0.1),
              ),
              onChanged: (value) {
                password1 = value;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return null;
                } else if (password1 != password) {
                  return 'Enter same password';
                } else if (value.length < 4) {
                  return 'Enter same password';
                } else {
                  return null;
                }
              },
            ),
            // SizedBox(height: kDefaultPadding * 4),
            // Spacer(flex: 2,),
            SizedBox(height: kDefaultPadding * 4),
            PrimaryButton(
              color: Theme.of(context).colorScheme.secondary,
              text: 'Sign Up',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatsScreen()));
              },
            ),
            // Spacer(flex: 2),
            SizedBox(height: kDefaultPadding * 4),
          ],
        ),
      ),
    );
  }
}
