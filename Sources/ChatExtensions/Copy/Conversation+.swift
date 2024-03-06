//
// Conversation+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels

public extension Conversation {
    var copy: Conversation {
        let copy = Conversation(admin: admin,
                                canEditInfo: canEditInfo,
                                canSpam: canSpam,
                                closedThread: closedThread,
                                description: description,
                                group: group,
                                id: id,
                                image: image,
                                joinDate: joinDate,
                                lastMessage: lastMessage,
                                lastParticipantImage: lastParticipantImage,
                                lastParticipantName: lastParticipantName,
                                lastSeenMessageId: lastSeenMessageId,
                                lastSeenMessageNanos: lastSeenMessageNanos,
                                lastSeenMessageTime: lastSeenMessageTime,
                                mentioned: mentioned,
                                metadata: metadata,
                                mute: mute,
                                participantCount: participantCount,
                                partner: partner,
                                partnerLastDeliveredMessageId: partnerLastDeliveredMessageId,
                                partnerLastDeliveredMessageNanos: partnerLastDeliveredMessageNanos,
                                partnerLastDeliveredMessageTime: partnerLastDeliveredMessageTime,
                                partnerLastSeenMessageId: partnerLastSeenMessageId,
                                partnerLastSeenMessageNanos: partnerLastSeenMessageNanos,
                                partnerLastSeenMessageTime: partnerLastSeenMessageTime,
                                pin: pin,
                                time: time,
                                title: title,
                                type: type,
                                unreadCount: unreadCount,
                                uniqueName: uniqueName,
                                userGroupHash: userGroupHash,
                                inviter: inviter,
                                lastMessageVO: lastMessageVO,
                                participants: participants,
                                pinMessage: pinMessage,
                                isArchive: isArchive)
        return copy
    }
}
