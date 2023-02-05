import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/home/widgets/post_widget.dart';
import 'package:instagram_flutter/pages/home/widgets/responsive_app_bar.dart';
import 'package:instagram_flutter/pages/home/widgets/right_panel.dart';
import 'package:instagram_flutter/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      StoriesList(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                    ],
                  ),
                ),
                RightPanel()
              ],
            )),
      ),
    );
  }
}
