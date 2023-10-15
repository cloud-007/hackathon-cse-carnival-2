import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/usecase/chat/fetch_chat_use_case.dart';
import 'package:reachout/domain/usecase/chat/send_message_use_case.dart';
import 'package:reachout/presentation/screen/chat_detail/state/chat_detail_ui_state.dart';
import 'package:reachout/presentation/util/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatDetailNotifier extends StateNotifier<ChatDetailUiState> {
  ChatDetailNotifier({required this.opponentId})
      : super(const ChatDetailUiState.loading()) {
    fetchChatDetail(opponentId: opponentId);
    initPusher();
  }

  List<ChatItem> _chats = [];
  final opponentId;
  final _sharedPref = getIt.get<SharedPreferences>();
  PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
  late String userId;

  void initPusher() async {
    userId = _sharedPref.getString('id') ?? "0";
    await pusher.init(
      apiKey: '9257157093a9d972aeda',
      cluster: 'ap2',
      onEvent: onEvent,
    );
    await pusher.subscribe(channelName: 'user__$userId');
    await pusher.connect();
  }

  void onEvent(PusherEvent event) {
    logger.i('event received: ${event}');
    if (event.eventName == 'new-message') {
      logger.d('new message received');
      _chats.insert(
        0,
        ChatItem(
          message: event.data['message'],
          createdAt: DateTime.now(),
          id: 1,
          sender: opponentId,
          receiver: int.parse(userId),
          isMine: false,
          modifiedAt: DateTime.now(),
        ),
      );
      state = ChatDetailUiState.success(chats: _chats);
      logger.d('new message received');
    }
    logger.d('event received');
  }

  Future<void> fetchChatDetail({required int opponentId}) async {
    state = const ChatDetailUiState.loading();

    final useCase = getIt.get<FetchChatDetailUseCase>();
    final result = await useCase(
      pageSize: 100,
      pageNumber: 1,
      opponentId: opponentId,
    );

    state = result.when(
      success: (data) {
        _chats.addAll(data);
        return ChatDetailUiState.success(chats: data);
      },
      failure: (failure) => ChatDetailUiState.error(failure.message),
    );
  }

  Future<void> sendMessage({
    required String message,
    required int receiverId,
  }) async {
    final useCase = getIt.get<SendMessageUseCase>();

    final result = await useCase(
      message: message,
      receiverId: receiverId,
    );

    result.when(
      success: (_) {
        _chats.insert(
          0,
          ChatItem(
            message: message,
            createdAt: DateTime.now(),
            id: 1,
            sender: 1,
            receiver: receiverId,
            isMine: true,
            modifiedAt: DateTime.now(),
          ),
        );
        state = ChatDetailUiState.success(chats: _chats);
      },
      failure: (failure) => ChatDetailUiState.error(failure.message),
    );
  }
}
