//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Davud Gündüz on 21.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                                
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)){
                                Text(element.name)
                            }

                            }
                        }
                    }
            }.navigationTitle("Favorite Book")        }
        
        
        }
    }


#Preview {
    ContentView()
}
