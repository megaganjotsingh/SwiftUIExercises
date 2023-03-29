//
//  MapView.swift
//  UIProgression4
//
//  Created by apple on 24/03/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCordinate = CLLocationCoordinate2D(latitude: 6.666666, longitude: 16.55555)
        let zoomLevel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        let mapRegion = MKCoordinateRegion(center: mapCordinate, span: zoomLevel)
        return mapRegion
    }()
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // deprecated
//            MapPin(coordinate: item.location, tint: .accentColor)
            // Marker
//            MapMarker(coordinate: item.location, tint: .accentColor)
            // MapAnnotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }
        .overlay(alignment: .top) {
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                
                VStack {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    } //: HStack
                    Divider()
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    } //: HStack
                } //: VStack
            } //: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                Color.black
                    .opacity(0.5)
                    .cornerRadius(8)
            )
            .padding()
        } //: overlay
        
    }
}

// MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
