//
//  CardModel.swift
//  Developer-Cards-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct Card : Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var imageName : String
    var callToAction : String
    var message : String
    var gradientColors : [Color]
    
    
    
}
