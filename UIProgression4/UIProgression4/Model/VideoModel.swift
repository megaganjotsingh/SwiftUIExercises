//
//  VideoModel.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnailString: String {
        "video-\(id)"
    }
}
