import 'package:fb_clone/models/story_model.dart';
import 'package:fb_clone/widget/icon_bar.dart';
import 'package:fb_clone/widget/stories_list_view.dart';
import 'package:fb_clone/widget/tool_bar.dart';
import 'package:flutter/material.dart';

import 'widget/new_post_bar.dart';

class FaceBook extends StatefulWidget {
  const FaceBook({super.key});

  @override
  State<FaceBook> createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  final dp =
      "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-1/282197966_1235834290487391_3347121330086322211_n.jpg?stp=dst-jpg_p240x240&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeFtcTQP_KJzS7M5YmFrWkM35USzS75fWpDlRLNLvl9akMFr-IjA6EKVYRAQlrS0EiRmZcqHObLQQ5j5iR6bfWiX&_nc_ohc=bSSqU9F70PkAX_OC6-S&_nc_ht=scontent-sin6-2.xx&oh=00_AfC0z0ibfhy4pIQbDSV9nq7iCQZbf3bA6SQ4RM1GExnd0g&oe=64C006ED";

  List<StoryModel> stories = [
    StoryModel(
      story:
          "https://cdn.shopify.com/s/files/1/0344/2586/4328/articles/persons_hand_delivering_a_vibrant_bouquet_from_Tooka_Flo_6616f8fb-b2ff-4071-bc7c-d3e32b7ba9e2_1024x1024.png?v=1686679475",
      uid: "100",
      userImage: "https://randomuser.me/api/portraits/women/60.jpg",
      userName: "Gina Bowman",
    ),
    StoryModel(
      story:
          "https://cdn.shopify.com/s/files/1/0344/2586/4328/articles/persons_hand_delivering_a_vibrant_bouquet_from_Tooka_Flo_6616f8fb-b2ff-4071-bc7c-d3e32b7ba9e2_1024x1024.png?v=1686679475",
      uid: "100",
      userImage: "https://randomuser.me/api/portraits/women/60.jpg",
      userName: "Gina Bowman",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      uid: "200",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      userName: "Robert Hudson",
    ),
    StoryModel(
      story:
          "https://upload.wikimedia.org/wikipedia/commons/4/4c/Beauty_of_Sigiriya_by_Binuka.jpg",
      uid: "300",
      userImage: "https://randomuser.me/api/portraits/women/5.jpg",
      userName: "Georgia Dixon",
    ),
    StoryModel(
      story:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/peml11q6maltpwsohdmi",
      uid: "400",
      userImage: "https://randomuser.me/api/portraits/men/11.jpg",
      userName: "Jon Reyes",
    ),
    StoryModel(
      story:
          "https://assets.mspimages.in/wp-content/uploads/2021/09/Samsung-Galaxy-M52-5G-Brand-Story.png",
      uid: "500",
      userImage: "https://randomuser.me/api/portraits/men/32.jpg",
      userName: "Jose Holt",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1580483046931-aaba29b81601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      uid: "600",
      userImage: "https://randomuser.me/api/portraits/women/79.jpg",
      userName: "Jill Jacobs",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ToolBar(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabIcon(icon: Icons.home),
                TabIcon(icon: Icons.people),
                TabIcon(icon: Icons.ondemand_video_outlined),
                TabIcon(icon: Icons.notifications),
                IconBar(),
              ],
            ),
            const Divider(
              thickness: 0.5,
            ),
            const NewPostBar(),
            const Divider(
              color: Colors.black38,
              thickness: 10,
            ),
            StoriesListView(stories: stories, dp: dp),
            const Divider(
              color: Colors.black38,
              thickness: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(dp),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kamal Jayawardhana",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              height: 0.8,
                            ),
                          ),
                          Text(
                            "Update Profile Photo",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "7h",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.public,
                                color: Colors.grey,
                                size: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.network(dp),
              ],
            )
          ],
        ),
      ),
    );
  }
}
