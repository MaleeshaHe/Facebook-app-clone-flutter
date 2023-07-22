import 'package:flutter/material.dart';

class NewPostBar extends StatelessWidget {
  const NewPostBar({
    super.key,
  });

  final dp =
      "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-1/282197966_1235834290487391_3347121330086322211_n.jpg?stp=dst-jpg_p240x240&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeFtcTQP_KJzS7M5YmFrWkM35USzS75fWpDlRLNLvl9akMFr-IjA6EKVYRAQlrS0EiRmZcqHObLQQ5j5iR6bfWiX&_nc_ohc=bSSqU9F70PkAX_OC6-S&_nc_ht=scontent-sin6-2.xx&oh=00_AfC0z0ibfhy4pIQbDSV9nq7iCQZbf3bA6SQ4RM1GExnd0g&oe=64C006ED";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(dp),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade500),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "What's On Your Mind",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.photo_album_outlined,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
