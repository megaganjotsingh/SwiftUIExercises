//
//  SettingsView.swift
//  UIProgression3
//
//  Created by apple on 23/03/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                   // Section 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and caloriesm. None have cholestrol. Fruits are sources of many essentials, including potassium diatary fiber, vitamins and much more.")
                                .font(.footnote)
                        } //: HStack
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    } //: GroupBox

                    // MARK: - Section 2
                    
                    GroupBox {
                        SetttingsRowView(name: "Developer", content: "Gaganjot Singh")
                        SetttingsRowView(name: "Compatibility", content: "iOS 14")
                        SetttingsRowView(name: "Github", linkLabel: "@Github", linkDestination: "github.com/megaganjotsingh")
                        SetttingsRowView(name: "SwiftUI", content: "2.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                } //: VStack
                .padding()
                .navigationTitle("Settings")
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
            } //: ScrollView
        } //: NavigationView
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
