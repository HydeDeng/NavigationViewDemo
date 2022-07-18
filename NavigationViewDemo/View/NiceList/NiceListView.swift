//
//  NiceListView.swift
//  NavigationViewDemo
//
//  Created by Siro on 2022/7/16.
//

import SwiftUI

struct NiceListView: View {
    @ObservedObject var userData = UserData()
    
    func sectionIndex(section : SectionDataModel) -> Int {
        userData.latinities.firstIndex(where: {$0.letter == section.letter})!
    }
    
    func quoteIndex(section : Int, quote : QuoteDataModel) -> Int {
        return userData.latinities[section].quotes.firstIndex(where: {$0.latin == quote.latin})!
    }
    
    var body: some View {
//        List {
            ForEach(userData.latinities) { section in
                Section(header: HeaderView(section: section)
                    .onTapGesture {
                        self.userData.latinities[self.sectionIndex(section: section)].expanded.toggle()
                }) {
                    if section.expanded {
                        ForEach(section.quotes) { quote in
                            
                            NavigationLink(destination: DetailView()){
                                QuoteView(title: quote.latin, subTitle: quote.russian)
                            }
                            
//                            QuoteView(title: quote.latin, subTitle: quote.russian)
//                            QuoteView(quote: quote)
//                                .onTapGesture {
//                                    let sectionIndex = self.sectionIndex(section: section)
//                                    let quoteIndex = self.quoteIndex(section: sectionIndex, quote: quote)
//                                    self.userData.latinities[sectionIndex].quotes[quoteIndex].expanded.toggle()
//                            }
                        }
                    }
                }
            }
        Spacer()
//        }
//        .listStyle(DefaultListStyle())
    }
}

struct NiceListView_Previews: PreviewProvider {
    static var previews: some View {
        NiceListView()
    }
}
