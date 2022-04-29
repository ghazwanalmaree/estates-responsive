import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/models/projects.dart';
import 'package:estates_with_responsive/responsive.dart';
import 'package:estates_with_responsive/widgets/main/project_card.dart';
import 'package:flutter/material.dart';


class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Project',
            style: Theme.of(context).textTheme.headline6,
          ),
          Responsive(
              desktop: buildGridView(
                itemCount: demoProjects.length,
                childAspectRatio: 0.75,
                crossAxistCount:3 ,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
              tablet: buildGridView(
                itemCount: demoProjects.length,
                childAspectRatio: 0.75,
                crossAxistCount:
                    MediaQuery.of(context).size.width < 900 ? 2 : 3,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              ),
              mobaileLarge: buildGridView(
                  itemCount: demoProjects.length,
                  childAspectRatio: 0.75,
                  crossAxistCount: 2,
                  itemBuilder: (context, index) =>
                      ProjectCard(project: demoProjects[index])),
              mobile: buildGridView(
                itemCount: demoProjects.length,
                childAspectRatio: 0.75,
                crossAxistCount: 1,
                itemBuilder: (context, index) =>
                    ProjectCard(project: demoProjects[index]),
              )
          )
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxistCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxistCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding),
      itemBuilder: itemBuilder,
    );
  }
}

