import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/models/recommendations_list.dart';
import 'package:flutter/material.dart';


class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    required this.recommendationList,
    Key? key,
  }) : super(key: key);
  final RecommendationList recommendationList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: kSecondaryColor,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  AssetImage(recommendationList.image!)),
              title: Text(
                recommendationList.name!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              subtitle: Text(
                recommendationList.source!,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              demoRecommendations[0].text!,
              style: TextStyle(
                height: 1.5,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            )
          ]),
    );
  }
}
