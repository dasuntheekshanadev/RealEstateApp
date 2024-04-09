import 'package:flutter/material.dart';

import 'ForgotPassword.dart';
import 'Reset_link.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 27),
        child: Container(
          child: Column(children: [
            const Text(
              "Profile",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Alexis Tech",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "alexistech.com",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 200,
            ),
            const Divider(),
            const SizedBox(height: 10),
            settings_widget(
                title: "Your Profile", icon: Icons.person, onPress: () {}),
            const Divider(),
            settings_widget(
                title: "Change Password",
                icon: Icons.lock,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PasswordResetPage()),
                  );
                }),
            const Divider(),
            settings_widget(
                title: "Forgot Password",
                icon: Icons.lock,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordWidget()),
                  );
                }),
            const Divider(),
            settings_widget(
                title: "Notifications",
                icon: Icons.notifications,
                onPress: () {}),
            const Divider(),
            settings_widget(
                title: "Languages", icon: Icons.language, onPress: () {}),
            const Divider(),
            settings_widget(
                title: "Help and Support", icon: Icons.support, onPress: () {}),
            const Divider(),
            settings_widget(
                title: "Log Out",
                icon: Icons.logout,
                textColor: Colors.red,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
          ]),
        ),
      ),
    );
  }
}

class settings_widget extends StatelessWidget {
  const settings_widget({
    required this.title,
    required this.icon,
    required this.onPress,
    this.textColor,
    super.key,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Icon(icon, color: Colors.black),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white.withOpacity(0.1),
        ),
      ),
    );
  }
}
