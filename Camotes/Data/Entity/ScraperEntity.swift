//
//
//  Created by Tatsuo Ikeda on 2018/03/16.
//  Copyright © 2018 Tatsuo Ikeda. All rights reserved.
//

public struct InfoEntity: Codable {
    let id: String?
    let title: String?
    let webpageUrl: String?
    let webpageBasename: String?
    let description: String?
    let manifestUrl: String?
    let ext: String?
    let url: String?
    let protocols: String?
    let format: String?
    let formatId: String?
    let tbr: Double?
    let extractor: String?
    let thumbnail: String?
    let duration: Double?
    let likeCount: Int?
    let viewCount: Int?
    let tags: [String]?
    let categories: [String]?
    let entries: [InfoEntity]?
    let formats: [InfoEntity]?
    let requestedFormats: [InfoEntity]?

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case webpageUrl         = "webpage_url"
        case webpageBasename    = "webpage_url_basename"
        case description
        case manifestUrl        = "manifest_url"
        case ext
        case url
        case protocols          = "protocol"
        case format
        case formatId           = "format_id"
        case tbr
        case extractor
        case thumbnail
        case duration
        case likeCount          = "like_count"
        case viewCount          = "view_count"
        case tags
        case categories
        case entries
        case formats
        case requestedFormats   = "requested_formats"
    }
}
