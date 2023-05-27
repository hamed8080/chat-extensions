//
// RemoveParticipantsRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 11/19/22

import ChatDTO
import ChatCore
import Foundation

extension RemoveParticipantsRequest: ChatSendable, SubjectProtocol {}

public extension RemoveParticipantsRequest {
    var content: String? { participantIds.jsonString }
    var subjectId: Int { threadId }
}
