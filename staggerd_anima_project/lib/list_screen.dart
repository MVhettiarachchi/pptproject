import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:staggerd_anima_project/list_card.dart';

class ListScreen extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: AnimationLimiter(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 400),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child:ListCard(
                  width: MediaQuery.of(context).size.width,
                  height: 88.0,
                  
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}
}