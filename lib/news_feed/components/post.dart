import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/../../constants/constants.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.name,
    required this.userName,
    required this.postImage,
  });

  final String name;
  final String userName;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 343,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 36.34,
                  height: 36.34,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyImages.claire),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$name\n',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17.16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.41,
                        ),
                      ),
                      TextSpan(
                        text: '@$userName',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF6C7A9C),
                          fontSize: 15.14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 343,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  height: 358,
                  width: double.infinity,
                  child: Image.asset(
                    postImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                const Icon(
                  Icons.favorite_border,
                  color: Color.fromRGBO(80, 80, 80, 1),
                  size: 28,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  MyIcons.chatIcon1,
                  color: const Color.fromRGBO(80, 80, 80, 1),
                  height: 28,
                  width: 28,
                ),
                const SizedBox(width: 10),
                Transform.flip(
                  flipX: true,
                  child: Image.asset(
                    MyIcons.sendIcon1,
                    color: const Color.fromRGBO(80, 80, 80, 1),
                    height: 28,
                    width: 28,
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  MyIcons.savedIcon1,
                  color: const Color.fromRGBO(80, 80, 80, 1),
                  height: 28,
                  width: 28,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
