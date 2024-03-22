//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Davud Gündüz on 22.03.2024.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.8 ,height: UIScreen.main.bounds.height * 0.4)
            
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text(chosenFavoriteElement.description)
        }
    }
}

#Preview {
    DetailsView(chosenFavoriteElement: theLordOfTheRings)
}
