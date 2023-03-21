//
//  PageModel.swift
//  UIProgression2
//
//  Created by apple on 21/03/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailImage: String {
        return "thumb-" + imageName
    }
}
