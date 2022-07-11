import 'package:flutter/material.dart';
import 'package:testapp/chat/views/video_call_screen.dart';
import 'package:testapp/chat/widgets/message_bubble.dart';
import 'package:testapp/chat/widgets/message_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const VideoCallScreen()),
              ),
              icon: const Icon(Icons.video_camera_front),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (_, index) => _messages[index],
                separatorBuilder: (_, __) => const SizedBox(height: 16),
              ),
            ),
            const MessageTextField(),
          ],
        ));
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    profileImageUrl:
        'https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8',
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
  MessageBubble(
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
  MessageBubble(
    profileImageUrl:
        'https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8',
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
  MessageBubble(
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
  MessageBubble(
    profileImageUrl:
        'https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8',
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
  MessageBubble(
    message:
        'Lorem ipsum dolor sit amet. Et consequuntur vero ea odit eligendi vel minima magni ut enim harum eum illum quod non excepturi voluptas sit quisquam voluptatum. ',
    date: 'Jul 5, 1:14 AM',
  ),
];
