import 'package:deep_dive_get_cli/app/shared/widgets/image_story.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/story_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Row(children: [
              Image.asset(
                'assets/images/IG_logo.png',
                scale: 2,
              ),
              const Icon(Icons.keyboard_arrow_down),
            ]),
            actions: [
              const Icon(Icons.favorite_outline),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/sms.png',
                scale: 2,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/add.png',
                scale: 2,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/home.png', scale: 1.5),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/search.png',
                    scale: 2,
                  ),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/reels.png', scale: 1.5),
                  label: 'reels'),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/shop.png', scale: 1.5),
                label: 'shop',
              ),
              const BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      'assets/images/foto_profile.png',
                    ),
                  ),
                  label: 'profile'),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 97.75,
                  child: ListView.builder(
                    itemCount: controller.storyModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      StoryModel data = controller.storyModel[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: ImageStory(
                          story: data,
                          onTap: () {
                            controller.toStoryPageView(data.storyItems);
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Post(
                  postModel: controller.postModel,
                  onPressed: controller.changeIconLike,
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
