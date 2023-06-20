//
// SendTextMessageRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation
import ChatModels

extension SendTextMessageRequest: ChatCore.UniqueIdProtocol, Queueable, PlainTextSendable, ReplyProtocol, MessageTypeProtocol, MetadataProtocol, SystemtMetadataProtocol, SubjectProtocol {
}

public extension SendTextMessageRequest {
    var content: String? { textMessage }
    var subjectId: Int { threadId }
    var _messageType: ChatCore.MessageType { ChatCore.MessageType(rawValue: self.messageType.rawValue) ?? .unknown }
}


public extension SendTextMessageRequest {
    var queueOfTextMessages: QueueOfTextMessages {
        .init(messageType: MessageType(rawValue: messageType.rawValue) ?? MessageType.text,
              metadata: metadata,
              repliedTo: repliedTo,
              systemMetadata: systemMetadata,
              textMessage: textMessage,
              threadId: threadId,
              typeCode: typeCode,
              uniqueId: uniqueId)
    }

    func queueOfFileMessages(_ request: UploadFileRequest) -> QueueOfFileMessages {
        .init(req: self, uploadFile: request)
    }

    func queueOfFileMessages(_ request: UploadImageRequest) -> QueueOfFileMessages {
        .init(req: self, imageRequest: request)
    }
}

