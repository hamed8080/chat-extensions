//
// DeleteReactionRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension DeleteReactionRequest: ChatSendable {}

public extension DeleteReactionRequest {
    var content: String? { "\(reactionId)" }
}
