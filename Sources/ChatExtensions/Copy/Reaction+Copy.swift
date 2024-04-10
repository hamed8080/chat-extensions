//
// Reaction+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import Foundation
import ChatDTO
import ChatModels

public extension Reaction {
    var copy: Reaction {
        return Reaction(id: id,
                        reaction: reaction,
                        participant: participant,
                        time: time)
    }
}
