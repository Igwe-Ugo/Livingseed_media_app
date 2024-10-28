// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../common/widget.dart';

class AccountPage extends StatefulWidget {
const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool switchSavedCollectionPrivate = false;

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            'Account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Playfair',
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    const Icon(Icons.notifications_rounded),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 80,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: InkWell(
                            onTap: () => GoRouter.of(context).go('${LivingSeedAppRouter.accountPath}/${LivingSeedAppRouter.editAccountPath}'),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 16,
                                minHeight: 16,
                              ),
                              child: const Icon(Icons.edit, size: 15)
                            ),
                          ),
                        ),  
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'Nwamadi Elijah Chibuokem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'nwamadielijah1@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Collections',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => GoRouter.of(context).go('${LivingSeedAppRouter.accountPath}/${LivingSeedAppRouter.cartPath}'),
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text(
                      'Cart',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.download),
                    title: const Text(
                      'Downloads',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Help  and support',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(Icons.admin_panel_settings_rounded),
                    title: const Text(
                      'About Livng Seed',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.question_answer),
                    title: const Text(
                      'Ask a question',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.speaker_group_rounded),
                    title: const Text(
                      'Counselling',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.people_alt_rounded),
                    title: const Text(
                      'Upcoming meetings',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.sunny),
                    title: const Text(
                      'Dark mode',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Theme.of(context).primaryColor,
                      inactiveTrackColor: Colors.grey.withOpacity(0.3),
                      inactiveThumbColor: Colors.white,
                      value: themeChange.darkTheme,
                      trackOutlineColor: WidgetStateProperty.resolveWith((states) => Colors.transparent),
                      onChanged: (value){
                        setState(() {
                          themeChange.darkTheme = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    onTap: () => GoRouter.of(context).go('${LivingSeedAppRouter.accountPath}/${LivingSeedAppRouter.changePasswordPath}'),
                    leading: const Icon(Icons.lock),
                    title: const Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => showLogoutDialog(context),
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

Future<void> showLogoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Logging out?',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const SizedBox(
        height: 40,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Are you sure you want to log out from your account on this device?',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            Navigator.of(context).pop();
            GoRouter.of(context).go(LivingSeedAppRouter.loginPath);
          },
          child: Text(
            'log out'.toUpperCase(),
            style: TextStyle(
              fontSize: 13,
              color: Theme.of(context).primaryColor
            ),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'not yet'.toUpperCase(),
            style: TextStyle(
              fontSize: 13,
              color: Theme.of(context).primaryColor
            ),
          ),
        ),
      ],
    ),
  );
}
