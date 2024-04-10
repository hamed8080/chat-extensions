//
// Contact+Copy.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels

public extension Contact {
    var copy: Contact {
        let copy = Contact(blocked: blocked,
                           cellphoneNumber: cellphoneNumber,
                           email: email,
                           firstName: firstName,
                           hasUser: hasUser,
                           id: id,
                           image: image,
                           lastName: lastName,
                           user: user,
                           notSeenDuration: notSeenDuration,
                           time: time,
                           userId: userId)
        return copy
    }
}
