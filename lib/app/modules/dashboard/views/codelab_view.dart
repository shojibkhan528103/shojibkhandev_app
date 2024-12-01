import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/json_data.dart';
import '../../../routes/app_pages.dart';

class CodelabView extends GetView {
  const CodelabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Html'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: codeLabs.length, // Use the length of the codeLabs list
        itemBuilder: (context, index) {
          // Get the story from the JSON data
          var story = codeLabs[index];

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
                  'storyData': story['story'],
                  'graphic': story['graphic'],
                  'example': story['example'],
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
