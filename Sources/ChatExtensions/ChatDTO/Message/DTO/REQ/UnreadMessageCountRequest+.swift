//
// UnreadMessageCountRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension UnreadMessageCountRequest: ChatSendable {}

public extension UnreadMessageCountRequest {
    var content: String? { jsonString }
}
