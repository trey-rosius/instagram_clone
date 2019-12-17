import 'package:flutter/material.dart';
import 'package:instagram/story/stories_screen.dart';
import 'package:instagram/story/storiesmodel.dart';
import 'package:instagram/unicorn_outline_button.dart';

class StoryItem extends StatelessWidget {
  StoryItem({this.storiesList,this.index});
  final StoriesList storiesList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("this one");
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StoriesScreen(

            )));
      },
      child: Container(
          child:  Column(
              children: <Widget>[
                 Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                     Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: new Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,

                        //  border: Border.all(color: const Color(0xFFF1AF27),width: 2.0),
                          // image: new Image.asset(_image.)
                        ),
                        child:index == 0 ?Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.purpleAccent.withOpacity(0.7),
                              radius: 50.0,

                            ),
                            Positioned(
                              top: 40,
                                left: 40,
                                child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black),

                                    ),

                                      child: Icon(Icons.add_circle,color: Colors.blue,size: 20,)))


                          ],
                        ):

                        UnicornOutlineButton(
                          strokeWidth: 2,
                          radius: 30,
                          gradient: LinearGradient(
                              colors: [

                                Color(0xFF4f5bd5),
                                Color(0xFF962fbf),
                                Color(0xFFd62976),
                                Color(0xFFfa7e1e),
                                Color(0xFFfeda75),
                                /*
                                Color(0xFF405de6),

                                Color(0xFF5851db),
                                Color(0xFF833ab4),
                                Color(0xFFc13584),
                                Color(0xFFe1306c),
                                Color(0xFFfd1d1d),
                                */
                          ]),

                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            backgroundImage:
                            AssetImage(storiesList.storiesList[index].profilePic)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StoriesScreen(

                                )));
                          },
                        ),))



                  ],
                ),
                Flexible(

                  child: Container(
                    width: 90.0,
                    child: Text(
                      storiesList.storiesList[index].name,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(fontSize: 14.0,fontFamily: 'Roboto',color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

      ),
    );
  }
}
