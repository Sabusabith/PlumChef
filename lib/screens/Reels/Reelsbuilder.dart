
// import 'package:flutter/material.dart';
// import 'package:plum_chef/screens/Reels/ReelPage.dart';

// class ReelsBuilder extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return  FutureBuilder(future: reelsController.fetchVideos(), 
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator(color: Colors.white,));
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               final videos = snapshot.data!;
//               return ReelsPage(reels: videos);
//             }
//           });
//   }

// }