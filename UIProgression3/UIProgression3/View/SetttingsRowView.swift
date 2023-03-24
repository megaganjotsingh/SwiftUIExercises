//
//  SetttingsRowView.swift
//  UIProgression3
//
//  Created by apple on 24/03/23.
//

import SwiftUI

struct SetttingsRowView: View {
    // MARK: - Properties
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
   // MARK: - Body
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                        Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    }
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview
struct SetttingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SetttingsRowView(name: "Developer", content: "John / Jane")
    }
}
