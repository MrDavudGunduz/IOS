//
//  FourthView.swift
//  FirstProjectSwiftUI
//
//  Created by Davud Gündüz on 19.03.2024.
//

import SwiftUI

struct FourthView: View {
    
    @State var name = "Davud"
    
    var body: some View {
        VStack{
            
            Text(name)
                .padding()
                .font(.largeTitle)
            Button("Button") {
                self.name = "Davud Gunduz"
            }
        }
    }
}

#Preview {
    FourthView()
}
