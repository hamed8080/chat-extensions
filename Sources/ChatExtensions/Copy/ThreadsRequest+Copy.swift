//
// ThreadsRequest+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import Foundation
import ChatDTO

public extension ThreadsRequest {
    func copyWith(count: Int, offset: Int) -> ThreadsRequest {
        return ThreadsRequest(count: count,
                              offset: offset,
                              name: name,
                              new: new,
                              isGroup: isGroup,
                              type: type,
                              archived: archived,
                              threadIds: threadIds,
                              creatorCoreUserId: creatorCoreUserId,
                              partnerCoreUserId: partnerCoreUserId,
                              partnerCoreContactId: partnerCoreContactId,
                              metadataCriteria: metadataCriteria,
                              cellPhoneNumber: cellPhoneNumber,
                              userName: userName,
                              summary: summary,
                              cache: cache)
    }
}
