import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/story/storiesmodel.dart';

class PostItem extends StatelessWidget {
  PostItem({this.postItem});
  final PostItems postItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(postItem.profilePic),
                      radius: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                         Text(postItem.name,style: TextStyle(fontSize: 18,color: Colors.white),),

                         Text(postItem.location,style: TextStyle(fontSize: 13,color: Colors.white,),),

                      ],
                    ),
                  )
                ],
              ),
              Icon(Icons.more_horiz,color: Colors.white,)
            ],
          ),
          AspectRatio(
            aspectRatio: 16/9,
            child: Image.asset(postItem.postImage,height: 200,fit: BoxFit.cover,),
          ),

          Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(FontAwesomeIcons.heart,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  Icon(FontAwesomeIcons.comment,color: Colors.white,)),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset('assets/images/sent.png',color: Colors.white,width: 30,),
      ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(postItem.likes,style: TextStyle(fontSize: 18,color: Colors.white,),),
          ),
          Padding(
            padding:  EdgeInsets.only(left:10.0),
            child: Row(
              children: <Widget>[
               Text(postItem.name,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),

                 Expanded(child: Text(postItem.caption,style: TextStyle(fontSize: 16,color: Colors.white,),)),

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:10.0),
            child:
                Text(postItem.commentNumber,style: TextStyle(fontSize: 16,color: Colors.grey,),),



          ),
          Padding(
            padding:  EdgeInsets.only(bottom:10.0,left: 10),
            child:
            Text(postItem.time,style: TextStyle(fontSize: 13,color: Colors.grey,),),



          )



        ],
      ),
    );
  }
}
