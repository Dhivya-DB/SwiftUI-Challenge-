//
//  extension.swift
//  recreationChallenge
//
//  Created by Dhivyabharathi Rathinakumar on 03/01/22.
//

import Foundation
import UIKit
import SwiftUI

extension Color {
    
    static var backgroundBlue: Color {
        return Color("backgroundBlue")
    }
    
    static var salmonPink: Color {
        return Color("SalmonPink")
    }
    
    static var maize: Color {
        return Color("Maize")
    }
    
    static var turquoiseBlue: Color {
        return Color("TurquoiseBlue")
    }
    
    static var cetaceanBlue: Color {
        return Color("CetaceanBlue")
    }
    
    static var darkOrange: Color {
        return Color("DarkOrange")
    }
    
    static var textFieldColor: Color {
        return Color("textFieldColor")
    }
    
    static var countryCodeColor: Color {
        return Color("countryCodeColor")
    }
}


extension Font {
    
    static var dancingFontBold: Font {
        return Font.custom("Pacifico-Regular", size: 55)
    }
    
    static func pacifico(size: CGFloat) -> Font {
        return Font.custom("Pacifico-Regular", size: size)
    }
    
    static func oswald(size: CGFloat) -> Font {
        return Font.custom("Oswald-Regular", size: size)
    }
    
    static var oswald: Font {
        return Font.custom("Oswald-Regular", size: 16)
    }
    
    static func lato(size: CGFloat) -> Font {
        return Font.custom("Lato-Bold", size: size)
    }
}
