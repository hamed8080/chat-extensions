//
// ThreadParticipantsRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 11/19/22

import ChatDTO
import ChatCore
import Foundation

extension ThreadParticipantsRequest: ChatSendable, SubjectProtocol {}

public extension ThreadParticipantsRequest {
    var content: String? { jsonString }
    var subjectId: Int { threadId }

    init(request: ThreadParticipantsRequest, admin: Bool) {
        self = request
        self.admin = admin
    }
}

extension ThreadParticipantsRequest: Paginateable {}
