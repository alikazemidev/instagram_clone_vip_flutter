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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index == 0 ? AddStory() : StoryBox();
                },
              ),
            ),
            GeneratePost(),
          ],
        ),
      ),
    );
  }
}

class GeneratePost extends StatelessWidget {
  const GeneratePost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              HeaderPost(),
              SizedBox(
                height: 20,
              ),
              BodyPost(),
            ],
          ),
        );
      },
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
          PorofileStoryBox(),
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

class PorofileStoryBox extends StatelessWidget {
  const PorofileStoryBox({
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

class StoryBox extends StatelessWidget {
  const StoryBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(6),
            strokeWidth: 2,
            color: kPrimaryColor,
            dashPattern: [30, 10],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ),
        ),
        Text(
          'test',
          style: kSubTitlePostStyle,
        )
      ],
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
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            width: 64,
            height: 64,
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
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'your story',
            style: kSubTitlePostStyle,
          )
        ],
      ),
    );
  }
}
