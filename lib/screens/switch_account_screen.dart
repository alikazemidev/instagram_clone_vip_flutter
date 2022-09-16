import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1f2e),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(
                        'images/switch_account_background.png',
                      ).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: Container(
                        height: 340,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(.5),
                              Colors.white.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/profile.png'),
                            Text(
                              'ali kz',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 46,
                              width: 129,
                              child: ElevatedButton(
                                style:
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {},
                                child: Text('Confrim'),
                              ),
                            ),
                            Text(
                              'Switch account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 132, bottom: 63),
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
    );
  }
}
