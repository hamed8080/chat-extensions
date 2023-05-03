//
// CreateThreadRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension CreateThreadRequest: ChatSendable {}

public extension CreateThreadRequest {
    var content: String? { jsonString }
}
