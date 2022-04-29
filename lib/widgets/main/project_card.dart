import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/models/projects.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
    Key? key,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: Text(
            project.description!,
            style: TextStyle(height: 1.3),
          )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "More Info >",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
