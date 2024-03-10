import 'package:flutter/material.dart';
import 'package:flutter_application_1/feacture/models/models_onboarded/models_onboarded.dart';

// ignore: must_be_immutable
class Onboarded extends StatefulWidget {
  const Onboarded({
    super.key,
    required this.model,
  });
  final Onboardedmodel model;

  @override
  State<Onboarded> createState() => _OnboardedState();
}

class _OnboardedState extends State<Onboarded> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.model.color,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            fit: BoxFit.contain,
            height: 200,
            width: 250,
            image: AssetImage(widget.model.image),
          ),
          Column(
            children: [
              Text(widget.model.titlesmall,
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          )
        ]));
  }
}
