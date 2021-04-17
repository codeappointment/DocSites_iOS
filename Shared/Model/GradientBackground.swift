//
//  GradientBackground.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 18/4/21.
//

import SwiftUI

struct GradientBackground: ViewModifier {
    let startColor: Color
    let endColor: Color
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    
    func body(content: Content) -> some View {
        content.background(LinearGradient(
                            gradient: Gradient(
                                colors: [startColor, endColor]
                            ),
                            startPoint: startPoint,
                            endPoint: endPoint))
    }
}

extension View {
    func gradientBacground(startColor: Color = Color.black,  endColor: Color = Color(red: 0.0, green: 0.5, blue: 1.0), startPoint: UnitPoint = .bottomLeading, endPoint: UnitPoint = .topTrailing) -> some View {
        ModifiedContent(content: self, modifier: GradientBackground(startColor: startColor, endColor: endColor, startPoint: startPoint, endPoint: endPoint))
    }
}
