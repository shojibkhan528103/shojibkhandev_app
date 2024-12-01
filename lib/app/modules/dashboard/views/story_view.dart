import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shojibkhan_testproject/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:shojibkhan_testproject/app/routes/app_pages.dart';

import '../../../data/json_data.dart';

class StoryView extends GetView<DashboardController> {
  const StoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Story section'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: stories.length, // Use the length of the stories list
        itemBuilder: (context, index) {
          // Get the story from the JSON data
          var story = stories[index];

          return Card(
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                  child:
                      Text(story['author'][0])), // Display the author's initial
              title: Text(story['title']), // Display the title
              subtitle: Text(story['subtitle']), // Display the subtitle
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => Get.toNamed(
                Routes.SINGLESTORY,
                arguments: {
                  'id': story['id'],
                  'title': story['title'],
                  'storyData': story['story']
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
