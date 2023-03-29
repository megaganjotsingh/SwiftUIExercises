//
//  VideoListView.swift
//  UIProgression4
//
//  Created by apple on 24/03/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - Properties
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List(videos) { video in
                NavigationLink {
                    VideoPlayerView(videoSelected: video.id, videoTitle: video.name)
                } label: {
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                }
            } //: List
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NavigationView
    }
}

// MARK: - Preview

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
