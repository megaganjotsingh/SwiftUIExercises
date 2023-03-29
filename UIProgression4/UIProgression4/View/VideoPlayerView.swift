//
//  VideoPlayerView.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Properties
    let videoSelected: String
    let videoTitle: String
    
    // MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
        } //: VStack
        .overlay(alignment: .topLeading) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
        }
        .tint(.accentColor)
        .navigationTitle(videoTitle)
    }
}

// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
