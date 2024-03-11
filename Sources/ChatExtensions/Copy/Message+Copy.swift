//
// Message+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels

public extension Message {
    var copy: Message {
        let copy = Message(threadId: threadId,
                           deletable: deletable,
                           delivered: delivered,
                           editable: editable,
                           edited: edited,
                           id: id,
                           mentioned: mentioned,
                           message: message,
                           messageType: messageType,
                           metadata: metadata,
                           ownerId: ownerId,
                           pinned: pinned,
                           previousId: previousId,
                           seen: seen,
                           systemMetadata: systemMetadata,
                           time: time,
                           timeNanos: timeNanos,
                           uniqueId: uniqueId,
                           conversation: conversation,
                           forwardInfo: forwardInfo,
                           participant: participant,
                           replyInfo: replyInfo,
                           pinTime: pinTime,
                           notifyAll: pinNotifyAll)
        return copy
    }
}
