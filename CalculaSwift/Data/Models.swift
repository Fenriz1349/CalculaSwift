//
//  Models.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI

// struct pour animer les bouton
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 55,height: 55)
            .background(Color.yellow)
            .foregroundStyle(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15.0))
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}

struct GrowingButtonEgale: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 115,height: 55)
            .background(Color.yellow)
            .foregroundStyle(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15.0))
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}
