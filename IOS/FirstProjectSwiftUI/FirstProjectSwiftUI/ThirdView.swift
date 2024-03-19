//
//  ThirdView.swift
//  FirstProjectSwiftUI
//
//  Created by Davud Gündüz on 19.03.2024.
//

import SwiftUI

struct ThirdView: View {
    
    var myArray = ["Kaan", "Batuhan" , "Ari" , "Cengiz"]
    
    var body: some View {
        
            List (myArray , id: \.self) { element in
                Image("Duman").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 0.3 , height: UIScreen.main.bounds.height * 0.05 , alignment: .leading)
                Text(element).font(.title)
            }
        }
    }


#Preview {
    ThirdView()
}
