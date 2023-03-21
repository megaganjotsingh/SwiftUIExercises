//
//  ControlImageView.swift
//  UIProgression2
//
//  Created by apple on 21/03/23.
//

import SwiftUI

struct ControlImageView: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .font(.system(size: 32))
    }
}

struct ControlImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControlImageView(imageName: "minus.magnifyingglass")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
