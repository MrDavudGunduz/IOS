//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Davud Gündüz on 21.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List{
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { elemet in Text(elemet.name)
        
                        }
                    }
                }
            }
        }
    }


#Preview {
    ContentView()
}
