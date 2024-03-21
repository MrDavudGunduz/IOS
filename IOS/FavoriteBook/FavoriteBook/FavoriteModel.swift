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

    // my favorite bands

var duman = FavoriteElements(name: "Duman", imageName: "Duman", description: "Duman, 1999'da İstanbul'da kurulan, günümüzde Kaan Tangöze (vokal ve gitar), Batuhan Mutlugil (geri vokal ve gitar), Ari Barokas (geri vokal ve bas gitar) ve Doğaç Titiz'den (davul) oluşan Türk Rock grubu. Duman, Kaan Tangöze'nin geniş aralıklı vokal performanslarıyla birlikte Amerikan Grunge ve Alternatif rock türlerini Türkiye'ye özgü Arabesk ve Halk müziğini birleştiren tarzıyla tanınır. Şimdiye dek altı stüdyo, üç konser, bir toplama ve üç de video albümü yayınlanmıştır.")

var morVeOtesi = FavoriteElements(name: "Mor Ve Otesi", imageName: "MorVeOtesi", description: "Mor ve Ötesi, Ocak 1995'te Harun Tekin (vokal & gitar), Alper Tekin (bas), Derin Esmer (vokal & gitar) ve Kerem Kabadayı (davul) tarafından İstanbul'da kuruldu. Aslında grubun temelleri, 90'lı yılların başında Harun Tekin ve Kerem Kabadayı'nın Alman Lisesi'nde okudukları dönemde kurdukları Decision grubu ile atılmıştır.")

var athena = FavoriteElements(name: "Athena", imageName: "Athena", description: "Athena, Türk ska ve punk rock grubu. Gökhan Özoğuz ve Hakan Özoğuz kardeşler grubun kurucu üyeleridir. Türkiye'de ska ve punk türünde müzik yapan ilk topluluklardan birisi oldu. Holigan albümünün aynı isimli şarkısı futbol maçlarının değişmez sloganı oldu. Bu şarkı, Türkiye millî basketbol takımı için yapılan 12 Dev Adam şarkısı ise basketbol takımının bir nevi marşı oldu. Birçok rock müzik dinleyicisine göre Türkiye'nin en iyi rock gruplarındandır.[1] 195 puanla Eurovision Şarkı Yarışması tarihinde Türkiye adına elde edilen en yüksek puanı aldı.")

var mfo = FavoriteElements(name: "MFO", imageName: "Mfo", description: "Mazhar Fuat Özkan, kısaca MFÖ, Türk pop ve rock müzik grubu. Mazhar Alanson, Fuat Güner ve Özkan Uğur'dan oluşmaktadır. 1984 yılında çıkardıkları Ele Güne Karşı Yapayalnız ile müzik hayatlarına başlayan grup; bu albümdeki - Ele Güne Karşı - , -Güllerin İçinden - , - Bu Sabah Yağmur Var İstanbul'da - , - Yalnızlık Ömür Boyu - gibi şarkılarla dikkat çekti. 1985 ve 1988 yıllarında sırasıyla - Diday Diday Day - ve - Sufi -  şarkılarıyla Türkiye'yi Eurovision şarkı yarışmasında temsil ettiler.")

var model = FavoriteElements(name: "Model", imageName: "Model", description: "2005 yılında Okan Işık, Aşkın Çolak ve Can Temiz tarafından A due Carmen adıyla kuruldu. 2007 yılında gruba Fatma Turgut ve Serkan Gürüzümcü katıldı. Sonraki yıl grubun adı MODEL olarak değişti.İlk albümü olan Perili Sirk, GNL Entertainment desteği ile 2009 yılında piyasaya sürüldü. Olmaz isimli parça dikkat çekmiş ve albümde Levent Yüksel ile yapılmış Bak Bir Varmış Bir Yokmuş düeti bulunuyordu.")

    // My favorite movies

var theLordOfTheRings = FavoriteElements(name: "The Lord Of The Rings", imageName: "TheLordOfTheRings", description: "Yüzüklerin Efendisi (İng. The Lord of the Rings), İngiliz filolojist ve Oxford Üniversitesi profesörü J. R. R. Tolkien'in yazdığı epik fantezi türündeki romandır. Hikâye, Tolkien'in çocuklar için yazdığı 1937 tarihli Hobbit'in devamı olarak başlamıştı ancak sonunda ondan çok daha büyük bir eser haline geldi.")

var harryPotter = FavoriteElements(name: "Harry Potter", imageName: "HarryPotter", description: "Harry Potter, İngiliz yazar J. K. Rowling tarafından yazılmış yedi fantastik romandan oluşan bir seridir. Romanlar, Hogwarts Cadılık ve Büyücülük Okulu'nda eğitim gören genç büyücü Harry Potter ile arkadaşları Hermione Granger ve Ron Weasley'nin yaşamlarını konu alır.")

var fastAndFurious = FavoriteElements(name: "Fast And Furious", imageName: "FastAndFurious", description: "Hızlı ve Öfkeli bir Amerikalı yasadışı sokak yarışı ve silahlı soygun merkezli, aksiyon filmleri ve diğer çeşitli medya filmlerinden oluşan bir seridir. Universal Pictures tarafından dağıtılan ve ilk filmi 2001'de çıkan seri dünya çapında büyük hasılat elde etmiş ve izleyicilerin beğenisini toplamıştır.")


var myDearFriend = FavoriteElements(name: "My Dear Friend", imageName: "MyDearFriend", description: " Can Dostum, felçi bir adam ve ona bakıcılık yapan gencin hikayesini anlatıyor. Zengin bir iş adamı ve aristokrat olan Philippe, yamaç paraşütü yaparken geçirdiği kaza sonrası felç olur ve boynundan aşağısı kullanamaz hale gelir. Driss ise hapishaneden henüz yeni çıkmış bir işsizdir.")

var thePianist = FavoriteElements(name: "The Pianist", imageName: "ThePianist", description: "Piyanist, 2002 yapımı bir biyografik Holokost savaş dram filmidir, yönetmeni Roman Polanski tarafından yönetilmiş ve prodüksiyonunu yapmış, senaryosu Ronald Harwood'a ait olan ve Adrien Brody'nin başrolde oynadığı bir filmdir. Polonya-Yahudi piyanist, besteci ve Holokost'tan kurtulan Władysław Szpilman'ın anılarına dayanmaktadır.")

var favoriteMovies = ModelFavorite(title: "Favorite Movies", elements: [theLordOfTheRings,harryPotter,fastAndFurious,myDearFriend,thePianist])

var favoriteBands = ModelFavorite(title: "Favorite Bands", elements: [duman,morVeOtesi,athena,mfo,model])

let myFavorites = [favoriteBands,favoriteMovies]






