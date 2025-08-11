// new class for blog list template
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CollinsBlogList {
  // Method
  Widget getCard({thumbnail, title, description, author, date}) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Date and Author
                  Text.rich(
                    TextSpan(
                      text: "by",
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: author,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Linda Ikeji tapped");
                            },
                        ),
                        TextSpan(
                          text: " at $date",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        // Comment
                        TextSpan(
                          text: " (2 Comment)",
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Comments tapped");
                            },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5),
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.2,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
