import 'dart:ui';
import 'package:flutter/material.dart';


class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40,
          sigmaY: 40,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.09),
          ),
          height: 300,
          child: GridView.builder(
            itemCount: 30,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
              );
            },
          ),
        ),
      ),
    );
  }
}
