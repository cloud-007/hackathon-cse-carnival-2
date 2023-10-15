import 'package:reachout/data/datasource/remote/model/chat_item_response.dart';
import 'package:reachout/data/datasource/remote/model/consultation_service_response.dart';
import 'package:reachout/data/datasource/remote/model/service_category_response.dart';
import 'package:reachout/data/mapper/account_mapper.dart';
import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/model/service_category.dart';

extension ServiceCategoryResonseMapper on ServiceCategoryResponse {
  ServiceCategory toServiceCategory() {
    return ServiceCategory(
      id: id,
      title: title,
      description: description,
    );
  }
}

extension ConsultationServiceResponseMapper on ConsultationServiceResponse {
  ConsultationService toDomain() {
    return ConsultationService(
      id: id,
      title: title,
      description: description,
      user: user.toUser(),
      category: category.toServiceCategory(),
      duration: duration,
      keywords: keywords,
      price: price,
      rating: rating,
      totalSessions: totalSessions,
    );
  }
}

extension ChatResponseMapper on ChatItemResponse {
  ChatItem toDomain() {
    return ChatItem(
      id: id,
      message: message,
      sender: sender,
      receiver: receiver,
      isMine: isMine,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
    );
  }
}
