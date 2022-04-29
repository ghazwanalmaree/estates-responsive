import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/responsive.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
        Container(
          color: kDarkColor.withOpacity(0.10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'build a greate future \n for all of us!',
                style: Responsive.isDisktop(context)
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)
                    : Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                          horizontal: kDefaultPadding * 2)),
                  onPressed: () {},
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(color: kDarkColor),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
