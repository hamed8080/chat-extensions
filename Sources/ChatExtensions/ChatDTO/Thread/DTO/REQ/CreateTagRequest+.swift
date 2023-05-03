//
// CreateTagRequest+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension CreateTagRequest: ChatSendable {}

public extension CreateTagRequest {
    var content: String? { jsonString }
}
