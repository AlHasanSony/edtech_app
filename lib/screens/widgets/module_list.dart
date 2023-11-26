import 'package:flutter/material.dart';
import 'package:edtech_app/models/module.dart';

class ModuleListWidget extends StatelessWidget {
  final List<Module> modules;

  ModuleListWidget({required this.modules});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Modules',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: modules.length,
          itemBuilder: (context, index) {
            var module = modules[index];
            return ListTile(
              title: Text(module.title),
              subtitle: Text(module.description),
            );
          },
        ),
      ],
    );
  }
}
