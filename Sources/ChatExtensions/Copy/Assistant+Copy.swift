//
// Assistant+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels

public extension Assistant {
    var copy: Assistant {
        let copy = Assistant(id: id,
                             contactType: contactType,
                             assistant: assistant,
                             participant: participant,
                             roles: roles,
                             block: block)
        return copy
    }
}
