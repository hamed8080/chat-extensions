//
// AllThreads+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatCore
import Foundation

extension AllThreads: ChatSendable {}

public extension AllThreads {
    var content: String? { jsonString }
}
