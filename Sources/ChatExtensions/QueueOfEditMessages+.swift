//
// QueueOfEditMessages+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels
import ChatDTO

public extension QueueOfEditMessages {
   convenience init(edit: EditMessageRequest) {
       self.init(messageId: edit.messageId,
                 messageType: .init(rawValue: edit.messageType.rawValue) ?? .unknown,
                 metadata: edit.metadata,
                 repliedTo: edit.repliedTo,
                 textMessage: edit.textMessage,
                 threadId: edit.threadId,
                 typeCode: edit.typeCode,
                 uniqueId: edit.uniqueId)
    }
}
