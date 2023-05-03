//
// QueueOfTextMessages+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatModels

public extension QueueOfTextMessages {
   convenience init(textRequest: SendTextMessageRequest) {
       self.init(messageType: .init(rawValue: textRequest.messageType.rawValue) ?? .unknown,
                 metadata: textRequest.metadata,
                 repliedTo: textRequest.repliedTo,
                 systemMetadata: textRequest.systemMetadata,
                 textMessage: textRequest.textMessage,
                 threadId: textRequest.threadId,
                 typeCode: textRequest.typeCode,
                 uniqueId: textRequest.uniqueId)
    }

    var request: SendTextMessageRequest {
        SendTextMessageRequest(threadId: threadId ?? -1,
                               textMessage: textMessage ?? "",
                               messageType: messageType ?? .unknown,
                               metadata: metadata,
                               repliedTo: repliedTo,
                               systemMetadata: systemMetadata,
                               uniqueId: uniqueId ?? "")
    }
}
