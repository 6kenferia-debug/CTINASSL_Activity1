import 'package:feria_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Ken Feria',
          postContent: 'Kinda miss them not a little much #1WeekNa',
          date: '3 hours ago',
          numOfLikes: 1,
          profileImagePath: 'assets/images/ken_profile.jpg',
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Xyle Tan',
          postContent: '',
          date: 'November 16, 2026',
          numOfLikes: 256,
          hasImages: true,
          imageAssetPath: 'assets/images/food_date.jpg',
          profileImagePath: 'assets/images/xyle_profile.jpg',
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Ken Feria',
          postContent: 'Movie night date with him <3',
          date: 'November 22, 2026',
          numOfLikes: 143,
          hasImages: true,
          imageAssetPath: 'assets/images/movie_night.jpg',
          profileImagePath: 'assets/images/ken_profile.jpg',
        ), // NewsfeedCard
      ],
    ); //ListView
  }
}
