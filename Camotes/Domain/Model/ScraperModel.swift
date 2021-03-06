//
//
//  Created by Tatsuo Ikeda on 2018/02/19.
//  Copyright © 2018 Tatsuo Ikeda. All rights reserved.
//
import UIKit

public struct InfoModel {
    public let id: String
    public let title: String
    public let webpageUrl: String
    public let webpageBasename: String
    public let description: String?
    public let manifestUrl: String?
    public let ext: String
    public let url: String?
    public let protocols: String?
    public let format: String?
    public let formatId: String?
    public let tbr: Double?
    public let extractor: String?
    public let thumbnail: String?
    public let duration: Double?
    public let likeCount: Int?
    public let viewCount: Int?
    public let tags: [String]?
    public let categories: [String]?
    public let entries: [InfoModel]?
    public let formats: [InfoModel]?
    public let requestedFormats: [InfoModel]?

    func sitename() -> String {
        switch (extractor, webpageUrl) {
        case (.some("generic"), _):
            return URL(string: webpageUrl)?.host ?? "generic"
        case (.some(let site), _):
            return site.lowercased()
        default:
            return "default"
        }
    }
}
