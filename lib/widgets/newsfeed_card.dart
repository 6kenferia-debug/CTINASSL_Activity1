import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:feria_mobprog/constants.dart';
import 'package:feria_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImages;
  final String? imageAssetPath;
  final String? profileImagePath;
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImages,
    this.imageAssetPath,
    this.profileImagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                profileImagePath == null
                    ? Icon(Icons.person)
                    : CircleAvatar(
                        radius: ScreenUtil().setSp(16),
                        backgroundImage: AssetImage(profileImagePath!),
                      ),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
                SizedBox(height: ScreenUtil().setHeight(5)),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),

            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            hasImages == true
                ? Image(image: AssetImage(imageAssetPath!))
                : SizedBox.shrink(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      tooltip: 'Like',
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                        size: screenUtilIconSize,
                      ),
                    ),
                    CustomText(
                      text: numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: fbDarkPrimary,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      tooltip: 'Comment',
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: fbDarkPrimary,
                        size: screenUtilIconSize,
                      ),
                    ),
                    CustomText(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: fbDarkPrimary,
                    ),
                  ],
                ),
                TextButton.icon(
                  onPressed: () {
                    // print('share button pressed');
                  },
                  icon: Icon(Icons.share, color: fbDarkPrimary),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(12),
                  backgroundImage: AssetImage('assets/images/ken_profile.jpg'),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(10),
                    0,
                    0,
                    0,
                  ),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
