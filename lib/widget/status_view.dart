import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text('''Bora tomar uma Jardiano ?''', Colors.red),
      StoryItem.pageImage(NetworkImage(
          "http://www.brasilnocopo.com.br/wp-content/uploads/2017/03/cerveja.jpg")),
      StoryItem.pageGif(
          "https://media3.giphy.com/media/Vdytz82ynweJB8nBTE/giphy.gif",
          imageFit: BoxFit.contain)
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: true,
        repeat: false,
        onComplete: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
