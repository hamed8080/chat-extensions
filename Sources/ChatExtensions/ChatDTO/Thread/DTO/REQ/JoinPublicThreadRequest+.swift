//
// JoinPublicThreadRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension JoinPublicThreadRequest: PlainTextSendable, ChatCore.UniqueIdProtocol {}

public extension JoinPublicThreadRequest {
    var content: String? { threadName }
}
