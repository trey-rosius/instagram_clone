import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_view/story_view.dart';
class StoriesScreen extends StatefulWidget {
  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {

  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  @override
  Widget build(BuildContext context) {

    List<StoryItem> storyItems = [
      StoryItem.text(
        "Haven't Hit the pinacles i plan to reach",
        Colors.black,
      ),
      StoryItem.pageImage(
          AssetImage('assets/images/b.jpeg'),
          imageFit: BoxFit.fitHeight
      ),
      StoryItem.pageImage(
          AssetImage('assets/images/profile_pic1.jpg'),
          imageFit: BoxFit.fitHeight
      ),
      StoryItem.pageImage(
          AssetImage('assets/images/c.jpeg'),
          imageFit: BoxFit.fitHeight
      ),

    ];
    return Scaffold(

      body: Stack(

        children: <Widget>[
          StoryView(
            storyItems,
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
              Navigator.of(context).pop();
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: storyController,
          ),
          Padding(
            padding: EdgeInsets.only(top:10.0),
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        print("Popped");
                        Navigator.of(context).pop();
                      }),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/profile_pic1.jpg',
                    ),
                    radius: 18.0,
                  ),
                ],
              ),
              title: Text("Rosalina Castaldi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500)),
              subtitle: Text(
                "10:40pm",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
          )
        ],
      )
    );
  }
}
