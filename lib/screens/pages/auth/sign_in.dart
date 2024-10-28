import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/common/custom_route.dart';

class LivingSeedSignIn extends StatefulWidget {
  const LivingSeedSignIn({super.key});

  @override
  State<LivingSeedSignIn> createState() => _LivingSeedSignInState();
}

class _LivingSeedSignInState extends State<LivingSeedSignIn> {
  bool _obscureText = true;
  final loginFormField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.png'),
                  fit: BoxFit.fill
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
              child: Form(
                key: loginFormField,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,25,20,0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                            fontFamily: 'Playfair',
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).disabledColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Theme.of(context).disabledColor.withOpacity(0.15),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).disabledColor.withOpacity(0.15),
                            prefixIcon: const Icon(Icons.email_outlined, size: 17,),
                            errorStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                            ),
                            hintText: 'Enter email',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Theme.of(context).disabledColor.withOpacity(0.15),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          obscureText: _obscureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).disabledColor.withOpacity(0.15),
                            prefixIcon: const Icon(Icons.lock_outline, size: 17),
                            hintText: 'Password',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                              fontSize: 17,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, size: 17,),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: ()=> GoRouter.of(context).go(LivingSeedAppRouter.homePath),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(10, 50),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical:10.0),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,10),
                        child: Text(
                          'OR CONTINUE WITH',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).disabledColor,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Theme.of(context).dividerColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(10, 50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.facebook, color: Colors.blue,),
                              const SizedBox(width: 10,),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0,
                                  color: Theme.of(context).primaryColorDark
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () => GoRouter.of(context).go(LivingSeedAppRouter.signUpPath),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}