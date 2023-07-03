//
// UserRole+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatModels

public extension UserRole {
    var isAdminRolesChanged: Bool { roles?.sorted(by: {$0.rawValue <  $1.rawValue}) ?? [] == Roles.adminRoles.sorted(by: {$0.rawValue < $1.rawValue}) }
}
