import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/responsive.dart';
import 'package:flutter/material.dart';

class IconsInfo extends StatelessWidget {
  const IconsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconsInfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '+67',
                          lable: 'Client'),
                    ),
                    Expanded(
                      child: buildIconsInfo(
                          context: context,
                          icon: Icons.location_on,
                          text: '+136',
                          lable: 'Projects'),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding*3,),
                Row(
                  children: [
                    Expanded(
                      child: buildIconsInfo(
                          context: context,
                          icon: Icons.public,
                          text: '+30',
                          lable: 'Countries'),
                    ),
                    Expanded(
                      child: buildIconsInfo(
                          context: context,
                          icon: Icons.stars,
                          text: '+13k',
                          lable: 'Stars'),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconsInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    text: '+67',
                    lable: 'Client'),
                buildIconsInfo(
                    context: context,
                    icon: Icons.location_on,
                    text: '+136',
                    lable: 'Projects'),
                buildIconsInfo(
                    context: context,
                    icon: Icons.public,
                    text: '+30',
                    lable: 'Countries'),
                buildIconsInfo(
                    context: context,
                    icon: Icons.stars,
                    text: '+13k',
                    lable: 'Stars'),
              ],
            ),
    );
  }

  Column buildIconsInfo(
      {required BuildContext context,
      required String text,
      required IconData icon,
      required String lable}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        const SizedBox(height: kDefaultPadding / 2),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 25),
        ),
        Text(
          lable,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
