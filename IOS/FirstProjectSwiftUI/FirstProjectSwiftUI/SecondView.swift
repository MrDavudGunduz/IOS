//
//  SecondView.swift
//  FirstProjectSwiftUI
//
//  Created by Davud Gündüz on 19.03.2024.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("Duman")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8 , height: UIScreen.main.bounds.height * 0.5 )
    }
}

#Preview {
    SecondView()
}
