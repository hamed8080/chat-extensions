//
// ThreadsRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 11/19/22

import ChatDTO
import ChatCore
import Foundation
import ChatCache

extension ThreadsRequest: ChatSendable {}

public extension ThreadsRequest {
    var content: String? { jsonString }
}


public extension ThreadsRequest {
    var fetchRequest: FetchThreadRequest {
        .init(count: count,
              offset: offset,
              name: name,
              new: new,
              isGroup: isGroup,
              type: type?.rawValue,
              archived: archived,
              threadIds: threadIds,
              creatorCoreUserId: creatorCoreUserId,
              partnerCoreUserId: partnerCoreUserId,
              partnerCoreContactId: partnerCoreContactId,
              metadataCriteria: metadataCriteria,
              uniqueId: uniqueId)
    }
}
