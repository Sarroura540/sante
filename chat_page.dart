import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dr. Olivia Turner'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(Icons.phone_outlined),
          SizedBox(width: 16.0),
          Icon(Icons.videocam_outlined),
          SizedBox(width: 16.0),
          Icon(Icons.info_outline),
          SizedBox(width: 8.0),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                _ChatMessage(text: '...', isMe: false, time: '09:00'),
                _ChatMessage(text: '...', isMe: true, time: '09:30'),
                _ChatMessage(text: '...', isMe: false, time: '09:43'),
                _ChatMessage(text: '...', isMe: false, time: '09:50'),
                _ChatMessage(text: '...', isMe: true, time: '09:55'),
              ],
            ),
          ),
          _ChatInputField(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}

class _ChatMessage extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;

  const _ChatMessage({
    required this.text,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue.shade100 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text),
            Text(
              time,
              style: const TextStyle(fontSize: 10.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatInputField extends StatelessWidget {
  const _ChatInputField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Write Here ..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          IconButton(
            icon: const Icon(Icons.mic),
            onPressed: () {
              // TODO: Implement mic functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // TODO: Implement send message functionality
            },
          ),
        ],
      ),
    );
  }
}
