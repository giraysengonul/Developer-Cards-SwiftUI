//
//  CardView.swift
//  Developer-Cards-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTY
    var card : Card
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .overlay(
                    
                    VStack{
                        Text(card.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Text(card.headline)
                            .fontWeight(.light)
                            .foregroundColor(.white)
                            .italic()
                    }.padding(),alignment: .top
                )
            Button {
                
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                    .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .foregroundColor(.white)
                }.padding(.vertical)
                    .padding(.horizontal,24)
                    .background(LinearGradient(colors: card.gradientColors, startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                    .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                    
            }
            .offset(y: 210)

            
            
        }
        .frame(width: 335, height: 545, alignment: .center)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}
// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[2]).previewLayout(.sizeThatFits)
    }
}
