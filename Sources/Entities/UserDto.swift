//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2025 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class UserDto.
public struct UserDto: Codable, Hashable, Identifiable {
    public var configuration: UserConfiguration?
    public var hasConfiguredEasyPassword: Bool?
    public var hasConfiguredPassword: Bool?
    public var hasPassword: Bool?
    public var id: String?
    public var lastActivityDate: Date?
    public var lastLoginDate: Date?
    public var name: String?
    public var policy: UserPolicy?
    public var primaryImageAspectRatio: Double?
    public var primaryImageTag: String?
    public var serverID: String?

    public init(
        configuration: UserConfiguration? = nil,
        hasConfiguredEasyPassword: Bool? = nil,
        hasConfiguredPassword: Bool? = nil,
        hasPassword: Bool? = nil,
        id: String? = nil,
        lastActivityDate: Date? = nil,
        lastLoginDate: Date? = nil,
        name: String? = nil,
        policy: UserPolicy? = nil,
        primaryImageAspectRatio: Double? = nil,
        primaryImageTag: String? = nil,
        serverID: String? = nil
    ) {
        self.configuration = configuration
        self.hasConfiguredEasyPassword = hasConfiguredEasyPassword
        self.hasConfiguredPassword = hasConfiguredPassword
        self.hasPassword = hasPassword
        self.id = id
        self.lastActivityDate = lastActivityDate
        self.lastLoginDate = lastLoginDate
        self.name = name
        self.policy = policy
        self.primaryImageAspectRatio = primaryImageAspectRatio
        self.primaryImageTag = primaryImageTag
        self.serverID = serverID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.configuration = try values.decodeIfPresent(UserConfiguration.self, forKey: "Configuration")
        self.hasConfiguredEasyPassword = try values.decodeIfPresent(Bool.self, forKey: "HasConfiguredEasyPassword")
        self.hasConfiguredPassword = try values.decodeIfPresent(Bool.self, forKey: "HasConfiguredPassword")
        self.hasPassword = try values.decodeIfPresent(Bool.self, forKey: "HasPassword")
        self.id = try values.decodeIfPresent(String.self, forKey: "Id")
        self.lastActivityDate = try values.decodeIfPresent(Date.self, forKey: "LastActivityDate")
        self.lastLoginDate = try values.decodeIfPresent(Date.self, forKey: "LastLoginDate")
        self.name = try values.decodeIfPresent(String.self, forKey: "Name")
        self.policy = try values.decodeIfPresent(UserPolicy.self, forKey: "Policy")
        self.primaryImageAspectRatio = try values.decodeIfPresent(Double.self, forKey: "PrimaryImageAspectRatio")
        self.primaryImageTag = try values.decodeIfPresent(String.self, forKey: "PrimaryImageTag")
        self.serverID = try values.decodeIfPresent(String.self, forKey: "ServerId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(configuration, forKey: "Configuration")
        try values.encodeIfPresent(hasConfiguredEasyPassword, forKey: "HasConfiguredEasyPassword")
        try values.encodeIfPresent(hasConfiguredPassword, forKey: "HasConfiguredPassword")
        try values.encodeIfPresent(hasPassword, forKey: "HasPassword")
        try values.encodeIfPresent(id, forKey: "Id")
        try values.encodeIfPresent(lastActivityDate, forKey: "LastActivityDate")
        try values.encodeIfPresent(lastLoginDate, forKey: "LastLoginDate")
        try values.encodeIfPresent(name, forKey: "Name")
        try values.encodeIfPresent(policy, forKey: "Policy")
        try values.encodeIfPresent(primaryImageAspectRatio, forKey: "PrimaryImageAspectRatio")
        try values.encodeIfPresent(primaryImageTag, forKey: "PrimaryImageTag")
        try values.encodeIfPresent(serverID, forKey: "ServerId")
    }
}
