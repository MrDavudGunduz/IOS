//
//  FifthView.swift
//  FirstProjectSwiftUI
//
//  Created by Davud Gündüz on 19.03.2024.
//

import SwiftUI

struct FifthView: View {
    @State var name = "Davud"
    
    var body: some View {
        VStack{
            Text(name).font(.largeTitle)
            TextField("Places Holder", text: $name).font(.title).frame(alignment: .center)
        }
    }
}

#Preview {
    FifthView()
}
