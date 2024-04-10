//
// ReactionList+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import Foundation
import ChatDTO
import ChatModels

public extension ReactionList {
    var copy: ReactionList {
        return ReactionList(messageId: messageId,
                            reactions: reactions?.compactMap{$0.copy})
    }
}
