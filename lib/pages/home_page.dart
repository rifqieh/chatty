import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 80,
        height: 85,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/button_add.png',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_profile.png',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            alignment: Alignment.center,
            child: Text(
              'Sabrina Carpenter',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 2,
            ),
            child: Text(
              'Travel Freelancer',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    'Friends',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                CustomListTile(
                  imageUrl: 'assets/image_friend1.png',
                  title: 'Joshuer',
                  subtitle: 'Sorry, you’re not my ty...',
                  time: 'Now',
                ),
                CustomListTile(
                  imageUrl: 'assets/image_friend2.png',
                  title: 'Gabriella',
                  subtitle: 'I saw it clearly and mig...',
                  time: '2:30',
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    'Group',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                CustomListTile(
                  imageUrl: 'assets/image_group1.png',
                  title: 'Jakarta Fair',
                  subtitle: 'Why does everyone ca...',
                  time: '11:11',
                ),
                CustomListTile(
                  imageUrl: 'assets/image_group2.png',
                  title: 'Angga',
                  subtitle: 'Here here we can go...',
                  time: '7:11',
                ),
                CustomListTile(
                  imageUrl: 'assets/image_group3.png',
                  title: 'Bentley',
                  subtitle: 'The car which does not...',
                  time: '7:11',
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String time;

  const CustomListTile({
    Key? key,
    this.imageUrl = '',
    this.title = '',
    this.subtitle = '',
    this.time = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  subtitle,
                ),
              ],
            ),
          ),
          Text(
            time,
            style: greyTextStyle.copyWith(
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }
}
