import 'package:flutter/material.dart';
import 'package:instagram_clone_vip_flutter/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xff323A99),
              Color(0xffF98BFC),
            ],
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/rocket.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TextFieldBoxLoginScreen(),
          ],
        ),
      ),
    );
  }
}

class TextFieldBoxLoginScreen extends StatefulWidget {
  @override
  State<TextFieldBoxLoginScreen> createState() =>
      _TextFieldBoxLoginScreenState();
}

class _TextFieldBoxLoginScreenState extends State<TextFieldBoxLoginScreen> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });

    passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          color: Color(0xff1C1F2E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(44, 50, 44, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign in to',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 20,
                        ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('images/mood.png')
                ],
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  labelText: 'Email',
                  labelStyle: kLableTextFieldStyle.copyWith(
                    color:
                        emailFocusNode.hasFocus ? kPrimaryColor : Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: kGrayBoderColor,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                focusNode: passwordFocusNode,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: kLableTextFieldStyle.copyWith(
                    color: passwordFocusNode.hasFocus
                        ? kPrimaryColor
                        : Colors.white,
                  ),
                  contentPadding: EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: kGrayBoderColor,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 129,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('sign'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 63),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account? / ',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.grey.shade700,
                          ),
                    ),
                    Text(
                      'sign up',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
