//
//  clippedView.swift
//  recreationChallenge
//
//  Created by Dhivyabharathi Rathinakumar on 03/01/22.
//

import SwiftUI

struct clippedView: View {
    
    var width: CGFloat = 150
    var height: CGFloat = 150
    var outerCircleXOffset: CGFloat = 0
    var outerCircleYOffSet: CGFloat = 0
    var xOffSet: CGFloat = 60
    var yOffSet: CGFloat = 70
    var colour: Color = .blue
    
    var body: some View {
        ZStack {
            Circle()
                .fill(colour)
                .frame(width: width, height: height)
                .offset(x: outerCircleXOffset, y: outerCircleYOffSet)
            Circle()
                .fill(Color.turquoiseBlue)
                .frame(width: width, height: width)
                .offset(x: xOffSet, y: yOffSet)
                .clipped()
        }
        .frame(width: width, height: height)
        .cornerRadius(height/2)
    }
}

struct clippedView_Previews: PreviewProvider {
    static var previews: some View {
        clippedView()
    }
}

