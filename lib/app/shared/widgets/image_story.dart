import 'package:deep_dive_get_cli/app/data/model/story_model.dart';
import 'package:flutter/material.dart';

class ImageStory extends StatelessWidget {
  final StoryModel story;
  final void Function()? onTap;
  const ImageStory({
    super.key,
    required this.story,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              children: [
                SizedBox(
                  width: 72,
                  height: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(72),
                    child: Image.asset(
                      'assets/images/${story.image}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                story.isLoginAccount
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '',
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            width:72,
            child: Text(
              story.namaAkun, 
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
