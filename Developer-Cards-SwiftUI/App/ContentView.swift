//
//  ContentView.swift
//  Developer-Cards-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI
 // MARK: - PROPERTY

var cards : [Card] = cardData


 // MARK: - BODY
struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                    
                }
            }.padding()
        }
    }
}


 // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
