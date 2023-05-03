//
// ReplyMessageRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation
import ChatModels

extension ReplyMessageRequest: Queueable, PlainTextSendable, ReplyProtocol, MessageTypeProtocol, MetadataProtocol, SystemtMetadataProtocol, SubjectProtocol {
}

public extension ReplyMessageRequest {
    var content: String? { textMessage }
    var subjectId: Int { threadId }
    var _messageType: ChatCore.MessageType { ChatCore.MessageType(rawValue: self.messageType.rawValue) ?? .unknown }
}

public extension ReplyMessageRequest {
    var sendTextMessageRequest: SendTextMessageRequest {
        .init(threadId: threadId,
              textMessage: textMessage,
              messageType: ChatModels.MessageType(rawValue: messageType.rawValue) ?? .text,
              metadata: metadata,
              repliedTo: repliedTo,
              systemMetadata: systemMetadata,
              uniqueId: uniqueId)
    }
}
