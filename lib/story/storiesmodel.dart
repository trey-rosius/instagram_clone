import 'dart:ui';

class Stories{
  final String name;
  final String profilePic;

  Stories({this.name, this.profilePic});



}
class PostItems{
  final String name;
  final String time;
  final String profilePic;
  final String location;
 final String likes;
 final String caption;
 final String commentNumber;

  final String postImage;

  PostItems({this.name, this.time, this.profilePic,this.postImage,this.location,this.likes,this.caption,this.commentNumber });


}


class StoriesList{

  final List<Stories>storiesList;
  final List<PostItems>postItems;

  StoriesList({this.storiesList, this.postItems});


}

final StoriesList storiesList = new StoriesList(
  storiesList: [
    Stories(
      name: "Your Story",
      profilePic: "assets/images/profile_pic.jpeg"

    ),
    Stories(
        name: "Rosalina Castaldi",
        profilePic: "assets/images/profile_pic1.jpg"

    ),
    Stories(
        name: "Nakisha Tiano",
        profilePic: "assets/images/profile_pic2.jpg"

    ),
    Stories(
        name: "Janey Eudy",
        profilePic: "assets/images/profile_pic3.jpg"

    ),
    Stories(
        name: "Vivien Lietz",
        profilePic: "assets/images/profile_pic4.jpg"

    ),
    Stories(
        name: "Jeanine Chiarello",
        profilePic: "assets/images/profile_pic5.jpeg"

    ),
    Stories(
        name: "Lera Bohman",
        profilePic: "assets/images/profile_pic6.jpeg"

    )
  ],
   postItems :[
     PostItems(
         name: "Melissa Cortillard",
         location: 'India,Delhi',
         likes: '3 likes',
         caption: 'industry standard dummy text',

         profilePic: "assets/images/profile_pic1.jpg",
         postImage: 'assets/images/post1.jpeg',
       commentNumber: 'View all 10 comments',


       time: "10:32am"

     ),

     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/profile_pic2.jpg",
         postImage: 'assets/images/post2.jpeg',
         location: 'Italy',
         time: "10:32am",
       likes: '460 likes',
       commentNumber: 'View all 50 comments',
       caption: 'industry standard dummy text',
     ),
     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/profile_pic2.jpg",
         postImage: 'assets/images/post4.jpeg',
         location: 'Cameroon',
         likes: '896 likes',
         commentNumber: 'View all 70 comments',
         caption: 'industry standard dummy text',
         time: "10:32am"


     ),

     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/profile_pic2.jpg",
         postImage: 'assets/images/post5.jpeg',
         location: 'Yaounde',
         likes: '307K likes',
         commentNumber: 'View all 16K comments',
         caption: 'industry standard dummy text',
         time: "10:32am"

     ),
     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/profile_pic2.jpg",
         postImage: 'assets/images/post2.jpeg',
         caption: 'industry standard dummy text',
         location: 'Egypt',
         likes: '798 likes',
         commentNumber: 'View all 90 comments',
         time: "10:32am"

     ),

     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/profile_pic2.jpg",
         postImage: 'assets/images/post4.jpeg',
         caption: 'industry standard dummy text',
         location: 'United States',
         commentNumber: 'View all 70 comments',
         likes: '765 likes',
         time: "24:32am"

     ),


   ]
);



