import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
  });

  final dp =
      "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-1/282197966_1235834290487391_3347121330086322211_n.jpg?stp=dst-jpg_p240x240&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeFtcTQP_KJzS7M5YmFrWkM35USzS75fWpDlRLNLvl9akMFr-IjA6EKVYRAQlrS0EiRmZcqHObLQQ5j5iR6bfWiX&_nc_ohc=bSSqU9F70PkAX_OC6-S&_nc_ht=scontent-sin6-2.xx&oh=00_AfC0z0ibfhy4pIQbDSV9nq7iCQZbf3bA6SQ4RM1GExnd0g&oe=64C006ED";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        color: Colors.amber,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(dp),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade700,
              radius: 6,
              child: const Icon(
                Icons.menu,
                size: 8,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TabIcon extends StatelessWidget {
  final IconData icon;

  const TabIcon({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 30,
    );
  }
}
