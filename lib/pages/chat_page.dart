import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom_ui/custom_card.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Dipesh",
      icon: "person.svg",
      isGroup: false,
      time: '4:00 PM',
      currentMessage: "Hello Dipesh, how's your day?",
    ),
    ChatModel(
      name: "Flutter Group",
      icon: "groups.svg",
      isGroup: true,
      time: '1:00 PM',
      currentMessage:
          "Hey Everyone, are you ready for tonight's session for flutter?",
    ),
    ChatModel(
      name: "Aayush",
      icon: "person.svg",
      isGroup: false,
      time: '11:00 AM',
      currentMessage: "Hello Aayush, what's up?",
    ),
    ChatModel(
      name: "Ankit",
      icon: "person.svg",
      isGroup: false,
      time: '8:00 PM',
      currentMessage: "Hey Ankit, how was your date today?",
    ),
    ChatModel(
      name: "Aakriti",
      icon: "person.svg",
      isGroup: false,
      time: '5:00 AM',
      currentMessage:
          "Hello Aakriti, So what's your response for my previous question?",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return CustomCard(
            chatModel: chats[index],
          );
        },
      ),
    );
  }
}
