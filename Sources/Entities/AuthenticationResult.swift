//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2025 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class AuthenticationResult.
public struct AuthenticationResult: Codable, Hashable {
    public var accessToken: String?
    public var serverID: String?
    public var servername: String?
    public var user: UserDto?

    public init(accessToken: String? = nil, serverID: String? = nil, servername: String? = nil, user: UserDto? = nil) {
        self.accessToken = accessToken
        self.serverID = serverID
        self.servername = servername
        self.user = user
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accessToken = try values.decodeIfPresent(String.self, forKey: "AccessToken")
        self.serverID = try values.decodeIfPresent(String.self, forKey: "ServerId")
        self.servername = try values.decodeIfPresent(String.self, forKey: "ServerName")
        self.user = try values.decodeIfPresent(UserDto.self, forKey: "User")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accessToken, forKey: "AccessToken")
        try values.encodeIfPresent(serverID, forKey: "ServerId")
        try values.encodeIfPresent(servername, forKey: "ServerName")
        try values.encodeIfPresent(user, forKey: "User")
    }
}
