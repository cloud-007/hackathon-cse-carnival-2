import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/domain/model/chat_list_item.dart';
import 'package:reachout/presentation/screen/chat_detail/notifier/providers.dart';

class ChatDetailScreenArgs {
  final ChatListItem sender;

  ChatDetailScreenArgs({
    required this.sender,
  });
}

class ChatDetailScreen extends ConsumerStatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  ConsumerState<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends ConsumerState<ChatDetailScreen> {
  final _textController = TextEditingController();

  @override
  void didUpdateWidget(covariant ChatDetailScreen oldWidget) {
    setState(() {});
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final settings = ModalRoute.of(context)!.settings;
    final args = settings.arguments as ChatDetailScreenArgs;
    final sender = args.sender.sender;

    final uiState = ref.watch(chatDetailNotifierProvider(sender.id));
    String message = '';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          sender.firstName,
          style: const TextStyle(color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: uiState.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (chats) {
          return ListView.builder(
            itemCount: chats.length,
            reverse: true,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: chat.isMine
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: chat.isMine ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          chat.message,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        error: (message) => Center(
          child: Text(message),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _textController,
                onChanged: (value) {
                  message = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: () {
                ref
                    .read(chatDetailNotifierProvider(sender.id).notifier)
                    .sendMessage(message: message, receiverId: sender.id);
                _textController.clear();
              },
              icon: const Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
