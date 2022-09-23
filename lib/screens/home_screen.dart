import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone_vip_flutter/constants.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          child: Image.asset('images/mood.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'images/icon_direct.png',
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          HeaderPost(),
          BodyPost(),
        ]),
      ),
    );
  }
}

class BodyPost extends StatelessWidget {
  const BodyPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: 394,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/post_cover.png'),
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Image.asset('images/icon_video.png'),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: kgradientWhite,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset('images/icon_hart.png'),
                          SizedBox(width: 6),
                          Text(
                            '2.6 k',
                            style: kTitlePostStyle,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('images/icon_comments.png'),
                          SizedBox(width: 6),
                          Text(
                            '1.5 k',
                            style: kTitlePostStyle,
                          ),
                        ],
                      ),
                      Image.asset('images/icon_share.png'),
                      Image.asset('images/icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderPost extends StatelessWidget {
  const HeaderPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Row(
        children: [
          StoryBox(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ali kazemi',
                  style: kTitlePostStyle,
                ),
                SizedBox(height: 5),
                Text(
                  'علی کاظمی برنامه نویس موبایل',
                  style: kSubTitlePostStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png'),
        ],
      ),
    );
  }
}

class StoryBox extends StatelessWidget {
  const StoryBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(6),
      strokeWidth: 2,
      color: kPrimaryColor,
      dashPattern: [30, 10],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }
}

class AddStory extends StatelessWidget {
  const AddStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: kscaffoldColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset('images/icon_plus.png'),
      ),
    );
  }
}
