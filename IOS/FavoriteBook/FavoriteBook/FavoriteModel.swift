//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Davud Gündüz on 21.03.2024.
//

import Foundation
import SwiftUI

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description :String
}

struct ModelFavorite : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

var duman = FavoriteElements(name: "Duman", imageName: "Duman", description: "Duman, 1999'da İstanbul'da kurulan, günümüzde Kaan Tangöze (vokal ve gitar), Batuhan Mutlugil (geri vokal ve gitar), Ari Barokas (geri vokal ve bas gitar) ve Doğaç Titiz'den (davul) oluşan Türk Rock grubu. Duman, Kaan Tangöze'nin geniş aralıklı vokal performanslarıyla birlikte Amerikan Grunge ve Alternatif rock türlerini Türkiye'ye özgü Arabesk ve Halk müziğini birleştiren tarzıyla tanınır. Şimdiye dek altı stüdyo, üç konser, bir toplama ve üç de video albümü yayınlanmıştır.")

var morVeOtesi = FavoriteElements(name: "MorVeOtesi", imageName: "MorVeOtesi", description: "Mor ve Ötesi, Ocak 1995'te Harun Tekin (vokal & gitar), Alper Tekin (bas), Derin Esmer (vokal & gitar) ve Kerem Kabadayı (davul) tarafından İstanbul'da kuruldu. Aslında grubun temelleri, 90'lı yılların başında Harun Tekin ve Kerem Kabadayı'nın Alman Lisesi'nde okudukları dönemde kurdukları Decision grubu ile atılmıştır.")

var athena = FavoriteElements(name: "Athena", imageName: "Athena", description: "Athena, Türk ska ve punk rock grubu. Gökhan Özoğuz ve Hakan Özoğuz kardeşler grubun kurucu üyeleridir. Türkiye'de ska ve punk türünde müzik yapan ilk topluluklardan birisi oldu. Holigan albümünün aynı isimli şarkısı futbol maçlarının değişmez sloganı oldu. Bu şarkı, Türkiye millî basketbol takımı için yapılan 12 Dev Adam şarkısı ise basketbol takımının bir nevi marşı oldu. Birçok rock müzik dinleyicisine göre Türkiye'nin en iyi rock gruplarındandır.[1] 195 puanla Eurovision Şarkı Yarışması tarihinde Türkiye adına elde edilen en yüksek puanı aldı.")


