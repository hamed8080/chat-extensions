//
// ContactsRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22


import Foundation
import ChatDTO
import ChatCore
import ChatCache

extension ContactsRequest: ChatSendable {}

public extension ContactsRequest {    
    var content: String? { jsonString }
}


public extension ContactsRequest {
    var fetchRequest: FetchContactsRequest {
        .init(id: id,
              count: size,
              cellphoneNumber: cellphoneNumber,
              email: email,
              coreUserId: coreUserId,
              offset: offset,
              order: Ordering(rawValue: order ?? ChatCache.Ordering.asc.rawValue) ?? ChatCache.Ordering.asc,
              query: query,
              summery: summery,
              uniqueId: uniqueId)
    }
}
