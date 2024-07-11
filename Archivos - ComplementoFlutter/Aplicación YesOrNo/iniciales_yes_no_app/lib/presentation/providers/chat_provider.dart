import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:iniciales_yes_no_app/domain/entities/message.dart';
import 'package:http/http.dart' as http; 

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola', fromWho: FromWho.mine),
    Message(text: 'Mundo', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messages.add(newMessage);
    notifyListeners();

    if (text.endsWith('?')) {
      await _getYesNoAnswer();
    }
  }

  Future<void> _getYesNoAnswer() async {
    final url = Uri.parse('https://yesno.wtf/api');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final answerText = data['answer'] == 'yes' ? 'Sí' : 'No';
      final answerImageUrl = data['image'];

      final answerMessage = Message(
        text: answerText,
        fromWho: FromWho.her,
        imageUrl: answerImageUrl,
      );

      messages.add(answerMessage);
      notifyListeners();
    }
  }
}
