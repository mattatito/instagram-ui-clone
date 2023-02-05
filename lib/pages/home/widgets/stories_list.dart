
import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile;
    print(ResponsiveWrapper.of(context));
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: isMobile ? 15 : 35),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 16,),
        itemCount: 16,
        itemBuilder: (context, index)=> const StoryCircle(),
      ),
    );
  }
}
