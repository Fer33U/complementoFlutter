import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iniciales_yes_no_app/domain/entities/message.dart';
import 'package:iniciales_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/shared/message_field_box.dart';

void main() => runApp(const ChatScreen());

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i5.walmartimages.com/seo/Patch-Sonic-The-Hedgehog-New-Sonic-Circle-Anime-Iron-On-Licensed-ge4328_86998770-a908-472a-8ef1-9115cb8c17d9.79f5276e77f7c24a7878947f7d01fe3c.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF'),
          ),
        ),
        title: const Text('Usuario'),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return (message.fromWho == FromWho.mine)
                      ? MyMessages(text: message.text)
                      : HerMessage(
                          text: message.text, imageUrl: message.imageUrl);
                },
              ),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
