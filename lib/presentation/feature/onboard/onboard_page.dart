import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

class OnboardPage extends StatefulWidget {
  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  var index = 0;
  var _raw = <Widget>[];

  @override
  void initState() {
    super.initState();
    _raw = [
      raw(
        kImgJoggingBro,
        'The 3CO Network',
        'A financial rewards from a social and health based token. What if your health could be converted into wealth? Your healthy habits earning rewards powering a better tomorrow. A cleaner, energy efficient and friendlier ecosystem powered by the hope of a brighter future. Unlock your willpower to change the world through a blockchain fuelled by introducing a sustainable ecosystem. Join a global network of people just like you. Earning rewards while working for a brighter future. ',
      ),
      raw(
        kImgBro,
        'What is TRAN...',
        'It is a decentralised app that supported on both iOS and android platforms. It is both a mining and fitness app combined that uses GPS to track your daily, weekly and monthly workouts routine. All ages can use it by offering three modes of rewarding. It promotes healthy living and fights obesity by rewarding tokens to generate wealth. It can be downloaded onto your mobile device with regular updates and enhancements.',
      ),
      raw(
        kImgAmico,
        'Redbelly blockchain...',
        'You will need a wallet from the Redbelly network.\nGo to Settings to create a new wallet.\nSave your private key. Do not lose it! \nWe can not help you to recover your lost private key.\nDo not share it! Make a backup! \nRemember your redbelly wallet address.\nYou will need to be a subcriber to access built-in features.\nDonations will help the 3co.network to fast-tracked in our developments and add new features.  ',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Background(
        child: Column(
          children: [
            kVSpaceXL,
            Row(
              children: [
                if (index != 2)
                  TextButton(onPressed: onDone, child: Text('Skip')),
                Spacer(),
                TextButton(
                  child: Text(index == 2 ? 'Done' : 'Next'),
                  onPressed: index == 2 ? onDone : () => changeIndex(index + 1),
                ),
              ],
            ),
            Flexible(
              child: IntroductionScreen(
                rawPages: _raw,
                onDone: onDone,
                showSkipButton: false,
                showDoneButton: false,
                showNextButton: false,
                onChange: (value) {
                  setState(() {
                    index = value;
                  });
                },
                globalBackgroundColor: Colors.transparent,
                dotsDecorator: DotsDecorator(
                  color: Colors.black26,
                  size: const Size.square(6.0),
                  activeSize: const Size(15.0, 6.0),
                  activeColor: Theme.of(context).colorScheme.secondary,
                  spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onDone() => Navigator.pushNamed(context, Routes.login);

  changeIndex(int value) {
    setState(() {
      index = value;
    });
  }

  Widget raw(Widget image, String title, String body) {
    return Column(
      children: [
        kVSpaceL,
        Flexible(flex: 2, child: image),
        kVSpaceL,
        Text(
          title,
          style: kTitle1.copyWith(color: kColorAccentBlue, fontSize: 22),
        ),
        kVSpaceM,
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSpaceS),
            child: Text(body, style: kBodyRegular, textAlign: TextAlign.center),
          ),
        ),
        kVSpaceL,
      ],
    );
  }
}
