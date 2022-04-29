import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/models/recommendations_list.dart';
import 'package:estates_with_responsive/widgets/main/recommendation_card.dart';
import 'package:flutter/material.dart';


class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              demoRecommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: RecommendationCard(
                  recommendationList: demoRecommendations[index],
                ),
              ),
            )),
          )
        ],
      ),
    );
  }
}

