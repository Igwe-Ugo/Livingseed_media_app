import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final double _textFont = 17.0;
  final double _textFieldFont = 17.0;
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 17,
          ),
        ),
        title: Text(
          'Change Password',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'playfair',
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black),
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(10, 50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Center(
                child: Text('Change Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black))),
          ),
        )
      ],
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter old password',
                  style: TextStyle(
                    fontSize: _textFieldFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _oldPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your old password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                    hintText: 'Old password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).highlightColor)),
                    hintStyle: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: _textFont,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Enter new password',
                  style: TextStyle(
                    fontSize: _textFieldFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _newPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a new password';
                    }
                    if (value.length < 4) {
                      return 'Password must be at least 4 characters long';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                    hintText: 'New password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).highlightColor)),
                    hintStyle: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: _textFont,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Confirm new password',
                  style: TextStyle(
                    fontSize: _textFieldFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _confirmNewPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your new password';
                    }
                    if (value != _newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                    hintText: 'Confirm password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).highlightColor)),
                    hintStyle: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: _textFont,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
