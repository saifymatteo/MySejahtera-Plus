import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/tiles_settings_button.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                  heightFactor: 1.9,
                  child: Text(
                    // topCheck,
                    'Settings',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline6,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 40,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SettingsButtonListTiles(
                            text: 'My Personal Details',
                            icon: Icons.person,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'Change MySJ ID',
                            icon: Icons.edit_rounded,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'Change my Password',
                            icon: Icons.lock_rounded,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'MySejahtera Helpdesk',
                            icon: Icons.info_rounded,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'Change language',
                            icon: Icons.translate_rounded,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'Privacy Policy',
                            icon: Icons.privacy_tip_rounded,
                            onTap: () {},
                          ),
                          SettingsButtonListTiles(
                            text: 'Logout',
                            icon: Icons.logout_rounded,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
