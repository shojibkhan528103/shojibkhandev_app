import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shojibkhan_testproject/app/modules/dashboard/controllers/dashboard_controller.dart';

class SingleStoryView extends GetView<DashboardController> {
  const SingleStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the arguments passed to this view
    var arguments = Get.arguments;
    var id = arguments['id'];
    var title = arguments['title'];
    var storyData = arguments['storyData'];
    var example = arguments['example'] ?? '';
    var graphic = arguments['graphic'] ?? '';

    // Pass these arguments to the controller
    controller.setStoryData(id, title, storyData);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text('Content: $id', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text('Title: $title',
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text('$storyData', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          if (graphic != '') Image.asset(graphic),
          const SizedBox(height: 16),
          if (example != '')
            Text('Example Code:',
                style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(
            example,
            style: const TextStyle(fontSize: 14, fontFamily: 'monospace'),
          ),
        ],
      ),
    );
  }
}
