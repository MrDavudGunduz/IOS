//
//  ContentView.swift
//  FirstProjectSwiftUI
//
//  Created by Davud Gündüz on 19.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, SwiftUI !!!")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.cyan)
            Text("Hello, SwiftUI !!!")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                
        }
        .padding()
        
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, SwiftUI !!!")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.cyan)
        }
    }
}

#Preview {
    ContentView()
}
