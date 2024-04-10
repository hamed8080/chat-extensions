//
// ReactionCountList+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import Foundation
import ChatDTO
import ChatModels

public extension ReactionCountList {
    var copy: ReactionCountList {
        return ReactionCountList(messageId: messageId,
                                 reactionCounts: reactionCounts,
                                 userReaction: userReaction?.copy)
    }
}
