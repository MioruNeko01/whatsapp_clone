import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom_ui/custom_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView(
        children: [
          const CustomCard(),
          const CustomCard(),
        ],
      ),
    );
  }
}
