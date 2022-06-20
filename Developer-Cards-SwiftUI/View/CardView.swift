//
//  CardView.swift
//  Developer-Cards-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTY
    @State private var fadeIn : Bool = false
    @State private var moveDownward : Bool = false
    @State private var moveUpward : Bool = false
    var card : Card
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1 : 0 )
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
                        
                    } .offset(y: moveDownward ? 0 : -120).padding(),alignment: .top
                    
                )
            Button {
                playSound(sound: "sound-chime", type: "mp3")
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
            .offset(y: moveUpward ? 210 : 300 )
            
            
            
        }
        .frame(width: 335, height: 545, alignment: .center)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear {
            withAnimation(.easeOut(duration: 1.5)){
                self.fadeIn.toggle()
            }
            withAnimation(.easeOut(duration: 0.8)){
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
    }
}
// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[2]).previewLayout(.sizeThatFits)
    }
}
