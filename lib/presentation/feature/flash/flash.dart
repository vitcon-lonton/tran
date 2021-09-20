import 'package:flutter/material.dart';
import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

class FlashPage extends StatefulWidget {
  @override
  State<FlashPage> createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 1)).then(
    //     (value) => Navigator.of(context).pushReplacementNamed(Routes.onboard));
    Future.delayed(Duration(seconds: 1)).then(
      (value) => Navigator.of(context)
          .pushNamedAndRemoveUntil(Routes.onboard, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      body: Container(
        child: Column(
          children: [
            kVSpaceL,
            kVSpaceL,
            kVSpaceL,
            kVSpaceL,
            Flexible(child: Center(child: kImgFlashBanner)),
            kVSpaceL,
            kVSpaceL,
            kVSpaceL,
          ],
        ),
      ),
    );
  }
}
