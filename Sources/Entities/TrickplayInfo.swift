//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2025 Jellyfin & Jellyfin Contributors
//

import Foundation

/// Class TrickplayInfo.
public struct TrickplayInfo: Codable, Hashable {
    /// Gets or sets the height.
    public var height: Int?
    /// Gets or sets the interval.
    public var interval: Int?
    /// Gets or sets the tile height.
    public var tileHeight: Int?
    /// Gets or sets the tile width.
    public var tileWidth: Int?
    /// Gets or sets the thumbnail count.
    public var thumbnailCount: Int?
    /// Gets or sets the width.
    public var width: Int?

    public init(
        height: Int? = nil,
        interval: Int? = nil,
        tileHeight: Int? = nil,
        tileWidth: Int? = nil,
        thumbnailCount: Int? = nil,
        width: Int? = nil
    ) {
        self.height = height
        self.interval = interval
        self.tileHeight = tileHeight
        self.tileWidth = tileWidth
        self.thumbnailCount = thumbnailCount
        self.width = width
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.height = try values.decodeIfPresent(Int.self, forKey: "Height")
        self.interval = try values.decodeIfPresent(Int.self, forKey: "Interval")
        self.tileHeight = try values.decodeIfPresent(Int.self, forKey: "TileHeight")
        self.tileWidth = try values.decodeIfPresent(Int.self, forKey: "TileWidth")
        self.thumbnailCount = try values.decodeIfPresent(Int.self, forKey: "ThumbnailCount")
        self.width = try values.decodeIfPresent(Int.self, forKey: "Width")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(height, forKey: "Height")
        try values.encodeIfPresent(interval, forKey: "Interval")
        try values.encodeIfPresent(tileHeight, forKey: "TileHeight")
        try values.encodeIfPresent(tileWidth, forKey: "TileWidth")
        try values.encodeIfPresent(thumbnailCount, forKey: "ThumbnailCount")
        try values.encodeIfPresent(width, forKey: "Width")
    }
}
