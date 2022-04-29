import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/widgets/menu/contact_info.dart';
import 'package:estates_with_responsive/widgets/menu/goals.dart';
import 'package:estates_with_responsive/widgets/menu/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ContactInfo(),
              Divider(),
              Goals(),
              Divider(),
              SizedBox(
                height: kDefaultPadding,
              ),
              TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/download.svg'),
                        const SizedBox(
                          width: kDefaultPadding / 2,
                        ),
                        Text(
                          'Download Brochure',
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        )
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding * 2),
                color: kSecondaryColor,
                child: Row(children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/github.svg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/twitter.svg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/dribble.svg'),
                  ),
                  Spacer(),
                ]),
              )
            ]),
          )),
        ],
      )),
    );
  }
}
