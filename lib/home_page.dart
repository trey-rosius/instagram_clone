import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/story/post_item.dart';
import 'package:instagram/story/storiesmodel.dart';
import 'package:instagram/story/story_item.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 120.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return StoryItem(index:index, storiesList:storiesList);
                  }),
            ),
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return PostItem(postItem: storiesList.postItems[index],);
          },
              childCount:storiesList.postItems.length ))


        ],
      ),
    );
  }
}
