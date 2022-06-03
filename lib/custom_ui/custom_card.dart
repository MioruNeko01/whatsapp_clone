import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/model/chat_model.dart';
import 'package:whatsapp_clone/screens/individual_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualPage(
              chatModel: chatModel,
            ),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                chatModel.isGroup ? 'assets/groups.svg' : 'assets/person.svg',
                color: Colors.white,
                height: 37,
                width: 37,
              ),
            ),
            title: Text(
              chatModel.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(width: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: Text(
                    chatModel.currentMessage,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Text(
              chatModel.time,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
