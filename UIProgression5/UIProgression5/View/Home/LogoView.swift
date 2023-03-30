//
//  LogoView.swift
//  UIProgression5
//
//  Created by apple on 30/03/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("Touch".uppercased())
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.black)
            
            Image("logo-dark")
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
