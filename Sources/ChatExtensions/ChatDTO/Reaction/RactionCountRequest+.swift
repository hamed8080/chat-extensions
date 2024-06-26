//
// RactionCountRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension RactionCountRequest: ChatSendable, SubjectProtocol {}

public extension RactionCountRequest {
    var subjectId: Int { conversationId }
    var content: String? { "\(messageIds)" }
}
