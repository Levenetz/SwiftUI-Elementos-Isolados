//
//  TextUiComponent.swift
//  UiComponentization
//
//  Created by Victor Levenetz Mariano on 13/09/24.
//

import SwiftUI
import Foundation


struct TextUiComponent : View{
    var text: String
    var color: Color
    var size : CGFloat
    
    
    init(text: String, color: Color, size: CGFloat) {
        self.text = text
        self.color = color
        self.size = size
    }
    
    var body: some View{
        Text(text)
            .foregroundStyle(color)
            .font(.system(size: size))
        
            
    }
    
}
