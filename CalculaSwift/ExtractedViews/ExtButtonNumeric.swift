//
//  ExtButtonNumeric.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//
//extracted view pour les boutons numeriques du clavier, generer les nombres,la virgule et les nombres negatifs
import Foundation
import SwiftUI

struct ExtButtonNumeric : View {
    var numberValue : String
    
    @Binding var temp : String
    var body: some View {
        Button(numberValue,action:{
            if  numberValue == "-/+" {
                if temp.hasPrefix("-") {
                    temp = String(temp.dropFirst())
                }else {
                    temp = "-"+temp
                }
            }else {
                temp += numberValue == "," ? "." : numberValue
            }
        })
        .buttonStyle(GrowingButton(width: 55, height: 55))
    }
}

