import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iniciales_yes_no_app/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final chatProvider = Provider.of<ChatProvider>(context, listen: false);

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
        hintText: 'Termina el mensaje con "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            if (textValue.isNotEmpty) {
              chatProvider.sendMessage(textValue);
              textController.clear();
            }
          },
        ));

    return TextFormField(
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          if (value.isNotEmpty) {
            chatProvider.sendMessage(value);
            textController.clear();
            focusNode.requestFocus();
          }
        },
        onChanged: (value) {});
  }
}
