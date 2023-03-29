//
//  VideoPlayerHelper.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        fatalError("Failed to locate \(fileName)")
    }
    videoPlayer = AVPlayer(url: url)
    videoPlayer?.play()
    return videoPlayer!
}
