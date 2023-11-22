//
//  ContentView.swift
//  AppleMap
//
//  Created by Jaabir Jamari on 11/20/23.
//
import MapKit
import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemRed))
            .onAppear{
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

#Preview {
    ContentView()
}
