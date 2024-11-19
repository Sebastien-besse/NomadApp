//
//  ContentView.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CitiesListView()
            .environmentObject(ReviewViewModel())
    }
}

#Preview {
    ContentView()
}
