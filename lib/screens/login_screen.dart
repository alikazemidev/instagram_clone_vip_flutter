import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            Positioned(
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
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  // Expanded(
  //           child: Container(
  //             decoration: BoxDecoration(
  //               color: Color(0xff1C1F2E),
  //               borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(15),
  //                 topRight: Radius.circular(15),
  //               ),
  //             ),
  //           ),
  //         ),
