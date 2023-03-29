//
//  InsetMapView.swift
//  UIProgression4
//
//  Created by apple on 26/03/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 5.55555, longitude: 5.555555), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: Body
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background {
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    }
                    
                } //: NavigationLink
                .padding(12)
            }
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: - Preview
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
    }
}
