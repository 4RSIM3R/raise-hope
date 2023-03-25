import 'dart:math';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raise Chat'),
        titleTextStyle: context.textTheme.titleMedium!.apply(
          fontWeightDelta: 2,
        ),
        titleSpacing: 0,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _chatList(),
          ),
          _buildInput(),
        ],
      ),
    );
  }

  Widget _buildInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        border: Border(
          top: BorderSide(
            color: context.colorScheme.onBackground.withOpacity(0.12),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                filled: true,
                fillColor: context.colorScheme.onBackground.withOpacity(0.15),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(
                color: context.colorScheme.onBackground,
                fontSize: 14,
              ),
              minLines: 1,
              maxLines: 1,
            ),
          ),
          16.horizontalSpace,
          IconButton(
            onPressed: () {},
            // papper plane
            icon: Icon(
              Icons.send_rounded,
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _chatList() {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withOpacity(0.15),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: 10,
        itemBuilder: (context, index) => _chatItem(),
      ),
    );
  }

  Widget _chatItem() {
    final isMe = Random().nextBool();
    final isRead = Random().nextBool();
    final isReplying = Random().nextBool();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: context.width * 0.7,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isMe
                  ? context.colorScheme.primary
                  : context.colorScheme.surface,
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: 16.circular,
                      topRight: 16.circular,
                      bottomLeft: 16.circular,
                    )
                  : BorderRadius.only(
                      topLeft: 16.circular,
                      topRight: 16.circular,
                      bottomRight: 16.circular,
                    ),
            ),
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (isReplying) ...[
                  _chatReply(isMe),
                  8.verticalSpace,
                ],
                Text(
                  'Okay, As Soon As Possible!',
                  style: TextStyle(
                    color: isMe
                        ? context.colorScheme.onPrimary
                        : context.colorScheme.onBackground,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '12:30 PM',
                      style: TextStyle(
                        color: isMe
                            ? context.colorScheme.onPrimary
                            : context.colorScheme.onBackground.withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                    if (isRead) ...[
                      4.horizontalSpace,
                      Icon(
                        Icons.circle,
                        size: 2,
                        color: isMe
                            ? context.colorScheme.onPrimary
                            : context.colorScheme.onBackground.withOpacity(0.5),
                      ),
                      4.horizontalSpace,
                      Text(
                        "Read",
                        style: TextStyle(
                          color: isMe
                              ? context.colorScheme.onPrimary
                              : context.colorScheme.onBackground
                                  .withOpacity(0.5),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _chatReply(bool isMe) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colorScheme.onBackground.withOpacity(0.15),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 4,
                height: double.infinity,
                color: isMe
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You',
                        style: TextStyle(
                          color: isMe
                              ? context.colorScheme.onPrimary
                              : context.colorScheme.primary,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      4.verticalSpace,
                      Text(
                        'Okay, As Soon As Possible!',
                        style: TextStyle(
                          color: isMe
                              ? context.colorScheme.onPrimary.withOpacity(0.75)
                              : context.colorScheme.onBackground,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
