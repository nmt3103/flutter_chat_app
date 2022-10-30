import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_app/constants.dart';

import '../signin_or_signup_screen/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(flex: 2),
          Image.asset("assets/images/welcome_image.png"),
          const Spacer(flex: 3),
          Text(
            "Welcome to our freedom \nmessaging app",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text("Freedom talk any person of your \nmother language.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color!
                    .withOpacity(0.64),
              )),
          const Spacer(flex: 2),
          FittedBox(
            child: TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninOrSignupScreen(),
                      ),
                    ),
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color!
                              .withOpacity(0.8)),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.8),
                    )
                  ],
                )),
          ),
          const Spacer(flex: 2),
        ],
      )),
    );
  }
}
